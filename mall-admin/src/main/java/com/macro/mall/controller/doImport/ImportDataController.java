package com.macro.mall.controller.doImport;

import com.alibaba.fastjson.JSON;
import com.macro.mall.common.api.CommonResult;
import com.macro.mall.model.CmsPrefrenceArea;
import com.macro.mall.model.ImportData;
import com.macro.mall.security.util.JwtTokenUtil;
import com.macro.mall.service.ImportDataService;
import com.macro.mall.service.UmsAdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@Api(tags = "ImportDataController", description = "用户首页")
@RequestMapping("/importData")
public class ImportDataController {
    @Autowired
    private ImportDataService importDataService;
    @Autowired
    private UmsAdminService umsAdminService;

    @ApiOperation("获取所有导入的数据")
    @RequestMapping(value = "/listAll", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<List<ImportData>> listAll(HttpServletRequest request, @RequestParam(value = "keyword", required = false) String keyword,
                                                  @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                                  @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize) {
        Long userId = this.umsAdminService.getAdminByUsername(String.valueOf(request.getAttribute("userName"))).getId();
        List<ImportData> list = this.importDataService.list(userId, keyword, pageNum, pageSize);
        return CommonResult.success(list);
    }
    @ApiOperation("导出模板")
    @PostMapping(value = "/getTamplate", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public void getTamplate(HttpServletRequest request, HttpServletResponse response, @RequestParam(value = "keyword", required = false) String keyword,
                            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                            @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize) {
        Long userId = this.umsAdminService.getAdminByUsername(String.valueOf(request.getAttribute("userName"))).getId();

        //创建一个数组用于设置表头
        String[] arr = new String[]{"日期","旺旺号","佣金","A金额","A信息","B金额","B信息","店名","备注1","备注2","备注3"};

        //调用Excel导出工具类
        this.importDataService.export(response,importDataService.listAll(userId),arr);
    }
    /**
     * excel导入
     * @param excelArr
     * @param excelData
     * @param onBankId
     * @return
     */
    @ApiOperation("导入数据")
    @RequestMapping(value = "/do_import" ,method = RequestMethod.POST )
    @ResponseBody
    public CommonResult upload( String excelArr,  String excelData,  Long onBankId) {
        Integer i = this.importDataService.upload(excelArr,excelData);
        return CommonResult.success(i);
    }
}