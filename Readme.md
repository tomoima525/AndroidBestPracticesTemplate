#Simple Android Architecture Template

This is a template for creating a simple Android Architecture project.  
Once you have set up the template, you can start your project with essential features.

## How to use
1. Place this template under `templates/activities` directory of Android Studio.
For Mac, this directory would be `/Applications/Android Studio.app/Contents/plugins/android/lib/templates/activities`.
2. Restart Android Studio. Then, start a new project from `File -> New Project...`

3. Choose `SimpleAndroidArchitecture` from templates.

## What is simple android architecture?

The architecture is based on [Android Best Practices](https://github.com/futurice/android-best-practices), but I made few changes for better usage.

###1. Project Architecture  
`prefs` , `apis` , `provider` are placed below `models` directory so that all data can be controlled under these package. 

```
com.myproject.myapp
├─ network
├─ models
|  ├─ prefs
|  ├─ apis
|  └─ provider
├─ utils
├─ activity
├─ fragments
├─ services
├─ views
└─ Application.java 
```

### 2. Application, Activity, Fragment, Preference file templates 

Some file templates are already written so that a user can start project without thinking about annoying setups.   
ex) An auto rotation setting is prefixed in MyApplication.java

```
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
```

## License

```
Licensed under the Apache License, Version 2.0 (the "License"). 
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES
OR CONDITIONS OF ANY KIND, either express or implied. See the License for
the specific language governing permissions and limitations under the License.

You agree that all contributions to this repository, in the form of fixes, 
pull-requests, new examples etc. follow the above-mentioned license.
```

