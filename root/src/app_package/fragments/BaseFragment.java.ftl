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
package ${packageName}.fragments;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.content.res.Resources;
import ${packageName}.${applicationClass};



public class BaseFragment extends Fragment {

    public Activity mActivity;

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        mActivity = activity;
    } 

    @SuppressWarnings("unchecked")
    public <T extends View>T findView(View view, int resId){
        return (T)view.findViewById(resId);
    }

    protected void finish() {
        if (isResumed())
            getActivity().finish();
    }

    /**
     * {@link Fragment#getResources()} sometimes fails because a fragment is not attached to an activity<br>
     * Use this method to call getResources from Application<br>
     * @return Resources
     */
    public Resources getResourcesFromApplication(){
        return ${applicationClass}.getInstance().getResources();
    }

}
