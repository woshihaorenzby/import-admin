package com.macro.mall.controller.doImport;

import com.macro.mall.common.api.CommonPage;
import com.macro.mall.common.api.CommonResult;
import com.macro.mall.dto.ImportDateParam;
import com.macro.mall.model.ImportData;
import com.macro.mall.service.ImportDataService;
import com.macro.mall.service.UmsAdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@Api(tags = "ImportData1Controller", description = "用户首页")
@RequestMapping("/importData1")
public class ImportData1Controller {
    @Autowired
    private ImportDataService importDataService;
    @Autowired
    private UmsAdminService umsAdminService;
    private final static String[] arr = new String[]{"年月日","编号","A信息","旺旺号","A金额","店名","B金额","C佣金","B信息","创建人","备注1","备注2","备注3"};
    private final static String[] template_arr = new String[]{"年月日","编号","A信息","旺旺号","A金额","店名","B金额","C佣金","B信息","备注1","备注2","备注3"};

    @ApiOperation("获取所有导入的数据")
    @RequestMapping(value = "/listAll/{pageNum}/{pageSize}/{fieldName}/{sortingType}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult<CommonPage<ImportData>> listAll(HttpServletRequest request, @RequestBody ImportDateParam importDateParam, @PathVariable("pageNum")Integer pageNum, @PathVariable("pageSize")Integer pageSize, @PathVariable("fieldName")String fieldName, @PathVariable("sortingType")String sortingType) {
        Long userId = this.umsAdminService.getAdminByUsername(String.valueOf(request.getAttribute("userName"))).getId();
        List<ImportData> list = this.importDataService.list(userId, importDateParam, pageNum, pageSize,fieldName,sortingType,1);
        return CommonResult.success(CommonPage.restPage(list));
    }
    @ApiOperation("导出模板")
    @PostMapping(value = "/getTamplate", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public void getTamplate(HttpServletRequest request, HttpServletResponse response) {
        Long userId = this.umsAdminService.getAdminByUsername(String.valueOf(request.getAttribute("userName"))).getId();

        //调用Excel导出工具类
        this.importDataService.export(response,null,template_arr);
    }
    @ApiOperation("导出数据")
    @RequestMapping(value = "/exportData", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE,method = RequestMethod.POST)
    public void exportData(HttpServletRequest request, HttpServletResponse response, @RequestBody ImportDateParam importDateParam) {
        Long userId = this.umsAdminService.getAdminByUsername(String.valueOf(request.getAttribute("userName"))).getId();
        //调用Excel导出工具类
        this.importDataService.export(response,this.importDataService.list(userId, importDateParam, 1, Integer.MAX_VALUE,null,null,1),arr);
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
    public CommonResult<List<String>> upload(HttpServletRequest request,  String excelArr,  String excelData) {
        String userName = String.valueOf(request.getAttribute("userName"));
        Long userId = this.umsAdminService.getAdminByUsername(userName).getId();
        List<String> upload = this.importDataService.upload(excelArr, excelData, userName, userId);
        if(upload.isEmpty())
            return CommonResult.success(upload);
        else
            return CommonResult.failed("导入失败",upload);
    }

    /**
     * excel删除
          * @param excelArr
          * @param excelData
          * @param onBankId
          * @return
     */
    @ApiOperation("导入数据")
    @RequestMapping(value = "/doDeleteByIds" ,method = RequestMethod.GET )
    @ResponseBody
    public CommonResult doDeleteByIds( @RequestParam(value = "ids") String ids) {
        Integer i = this.importDataService.doDeleteByIds(ids);
        return CommonResult.success(i);
    }
    /**
     * excel删除
          * @param excelArr
          * @param excelData
          * @param onBankId
          * @return
     */
    @ApiOperation("导入数据")
    @RequestMapping(value = "/listAll/doDeleteHis" ,method = RequestMethod.GET )
    @ResponseBody
    public CommonResult<String> doDeleteHis(HttpServletRequest request,  @RequestParam(value = "ids") String ids) {
        Long userId = this.umsAdminService.getAdminByUsername(String.valueOf(request.getAttribute("userName"))).getId();
        String i = this.importDataService.doDeleteHis(ids,userId,1);
        return CommonResult.success(i);
    }
    /**
     * excel获取单个数据
          * @param excelArr
          * @param excelData
          * @param onBankId
          * @return
     */
    @ApiOperation("获取单个数据")
    @RequestMapping(value = "/getImportData/{id}" ,method = RequestMethod.GET )
    @ResponseBody
    public CommonResult<ImportData> getImportData(HttpServletRequest request, @PathVariable("id") Long id) {
        Long userId = this.umsAdminService.getAdminByUsername(String.valueOf(request.getAttribute("userName"))).getId();
        ImportData importData = this.importDataService.getImportData(id,userId,1);
        return CommonResult.success(importData);
    }
    /**
     * 更新单个数据
          * @param excelArr
          * @param excelData
          * @param onBankId
          * @return
     */
    @ApiOperation("获取单个数据")
    @RequestMapping(value = "/updateImportData/{id}" ,method = RequestMethod.POST )
    @ResponseBody
    public CommonResult<ImportData> updateImportData(@PathVariable("id") Long id, @Validated @RequestBody ImportData importData) {
        boolean update = this.importDataService.update(id, importData);
        if(update)
        return CommonResult.success(importData);
        else
            return CommonResult.failed();
    }
    /**
     * 更新单个数据
          * @param excelArr
          * @param excelData
          * @param onBankId
          * @return
     */
    @ApiOperation("保存单个数据")
    @RequestMapping(value = "/createImportData" ,method = RequestMethod.POST )
    @ResponseBody
    public CommonResult<ImportData> createImportData(HttpServletRequest request, @Validated @RequestBody ImportData importData) {
        String userName = String.valueOf(request.getAttribute("userName"));
        Long userId = this.umsAdminService.getAdminByUsername(userName).getId();
        importData.setCreateUsername(userName);
        importData.setCreateUserId(userId);
        boolean save = this.importDataService.save(importData);
        if(save)
            return CommonResult.success(importData);
        else
            return CommonResult.failed();
    }
}