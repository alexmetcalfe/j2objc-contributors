package com.metcalfe;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import butterknife.ButterKnife;
import butterknife.InjectView;

/**
 * Created by alex on 12/07/15.
 */
public class ContributorDetailFragment extends Fragment {

    @InjectView(R.id.detailText)
    TextView mDetailText;

    public static Fragment newInstance(int contributons) {
        Fragment f = new ContributorDetailFragment();

        Bundle b = new Bundle();
        b.putInt("contributions", contributons);
        f.setArguments(b);

        return f;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_detail, container, false);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        ButterKnife.inject(this, view);

        if(getArguments() != null) {
            int contributions = getArguments().getInt("contributions");

            mDetailText.setText("Contributions: " + contributions);
        }

    }
}
