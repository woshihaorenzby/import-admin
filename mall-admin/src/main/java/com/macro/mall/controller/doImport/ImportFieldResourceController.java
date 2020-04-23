package com.macro.mall.controller.doImport;

import com.alibaba.fastjson.JSON;
import com.macro.mall.common.api.CommonPage;
import com.macro.mall.common.api.CommonResult;
import com.macro.mall.model.ImportField;
import com.macro.mall.model.UmsResource;
import com.macro.mall.security.component.DynamicSecurityMetadataSource;
import com.macro.mall.service.ImportFieldService;
import com.macro.mall.service.UmsResourceService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 后台资源管理Controller
 * Created by macro on 2020/2/4.
 */
@Controller
@Api(tags = "ImportFieldResourceController", description = "字段权限")
@RequestMapping("/importField")
public class ImportFieldResourceController {

    @Autowired
    private ImportFieldService importFieldService;

    @ApiOperation("添加后台资源")
    @RequestMapping(value = "/listAll/{roleId}", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<List<Map<String,Object>>> listAll(@PathVariable Long roleId) {
        List<Map<String,Object>> list = this.importFieldService.listAllByRoleId(roleId);
        return  CommonResult.success(list);
    }


}
