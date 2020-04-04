package com.macro.mall.controller.doImport;

import com.macro.mall.common.api.CommonResult;
import com.macro.mall.model.CmsPrefrenceArea;
import com.macro.mall.model.ImportData;
import com.macro.mall.security.util.JwtTokenUtil;
import com.macro.mall.service.ImportDataService;
import com.macro.mall.service.UmsAdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
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
}
