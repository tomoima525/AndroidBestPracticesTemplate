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
package ${packageName}.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

import ${packageName}.MyApplication;
import ${packageName}.consts.S;

public class LocalStorageUtil {

    public static Editor getEditor() {
        return getLocalStorage().edit();
    }

    public static SharedPreferences getLocalStorage() {
        return ${applicationClass}.getInstance().getSharedPreferences(S.common_pref, Context.MODE_PRIVATE);
    }

    public static String getString(String key) {
        return getLocalStorage().getString(key, "");
    }

    public static int getInt(String key) {
        return getLocalStorage().getInt(key, 0);
    }

    public static int getInt(String key, int defValue) {
        return getLocalStorage().getInt(key, defValue);
    }

    public static boolean getBoolean(String key, boolean defValue) {
        return getLocalStorage().getBoolean(key, defValue);
    }
    /*
     *put and commit
     */
    public static void putBoolean(String key, boolean value) {
        getEditor().putBoolean(key, value).apply();
    }

    public static void putString(String key, String value) {
        getEditor().putString(key, value).apply();
    }

}
