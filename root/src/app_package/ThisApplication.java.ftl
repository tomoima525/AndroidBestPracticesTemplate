/**
* Licensed under the Apache License, Version 2.0 (the "License"). 
* You may obtain a copy of the License at
* 
* http://www.apache.org/licenses/LICENSE-2.0
* 
* Unless required by applicable law or agreed to in writing, software distributed
* under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES
* OR CONDITIONS OF ANY KIND, either express or implied. See the License for
* the specific language governing permissions and limitations under the License.
* 
* You agree that all contributions to this repository, in the form of fixes, 
* pull-requests, new examples etc. follow the above-mentioned license.
*
* Tomoaki Imai 2015
**/
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
