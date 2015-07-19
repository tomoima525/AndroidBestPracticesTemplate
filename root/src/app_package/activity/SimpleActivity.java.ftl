package ${packageName}.activity;

import ${superClassFqcn};
import android.os.Bundle;

<#if packageName??>
import ${packageName}.R;
</#if>

public class ${activityClass} extends ${superClass} {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
    }

}
