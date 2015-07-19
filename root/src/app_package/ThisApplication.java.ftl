package ${packageName};

import android.app.Application;
import android.content.res.Configuration;
import ${packageName}.utils.LocalStorageUtil;

public class ${applicationClass} extends Application {

    private static ${applicationClass} sApp;

    public ${applicationClass}(){

    }

    public static ${applicationClass} getInstance(){
        if(sApp == null){
            sApp = new ${applicationClass}();
        }
        return sApp;

    }

    @Override
    public void onCreate() {
        super.onCreate();
        sApp = this;
        //Check if a device is a tablet
        LocalStorageUtil.putBoolean("is_tablet", getResources().getBoolean(R.bool.is_tablet));        
    }

    /**
     * If a device is a tablet, allow an applicaiton to autoRotate 
     * @return true: autoRotate false: Do not allow landscape mode  
     */
    public static boolean isAutoLandscape() {
        return LocalStorageUtil.getBoolean("is_tablet", false);
    }

    public boolean isLandscape() {
        return (getResources().getConfiguration().orientation == Configuration.ORIENTATION_LANDSCAPE);
    }

}
