package com.metcalfe;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.metcalfe.model.Contributor;
import com.metcalfe.service.GitHubService;
import com.metcalfe.service.GitHubServiceImpl;
import com.metcalfe.service.SimpleHttpClient;

import java.util.List;

import butterknife.ButterKnife;
import butterknife.InjectView;
import rx.android.app.AppObservable;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/**
 * A placeholder fragment containing a simple view.
 */
public class ContributorListFragment extends Fragment {

    private static final String TAG = "ContributorListFragment";

    private GitHubService mGitHubService;

    @InjectView(R.id.contributors)
    public RecyclerView mRecyclerView;
    private SimpleAdapter mAdapter;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_contributors, container, false);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        ButterKnife.inject(this, view);

        mGitHubService = new GitHubServiceImpl(new SimpleHttpClient());

        RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(this.getActivity());
        mRecyclerView.setLayoutManager(mLayoutManager);

        AppObservable.bindFragment(this, mGitHubService.observeContributors())
                .subscribeOn(Schedulers.io())
                .subscribe(new Action1<List<Contributor>>() {
                    @Override
                    public void call(List<Contributor> contributors) {
                        mAdapter = new SimpleAdapter(contributors, new SimpleAdapter.ViewHolder.OnItemClickListener() {
                            @Override
                            public void onItemClick(View view, int position) {
                                Contributor contributor = mAdapter.getItem(position);

                                Intent intent = new Intent(getActivity(), ContributorDetailActivity.class);
                                intent.putExtra("contributions", contributor.getContributions());
                                startActivityForResult(intent, 0);
                            }
                        });
                        mRecyclerView.setAdapter(mAdapter);
                    }
                });
    }

    public static class SimpleAdapter extends RecyclerView.Adapter<SimpleAdapter.ViewHolder> {
        private List<Contributor> mDataset;

        public static class ViewHolder extends RecyclerView.ViewHolder {

            public interface OnItemClickListener {
                void onItemClick(View view, int position);
            }

            final OnItemClickListener mListener;

            public TextView mTextView;

            public ViewHolder(TextView v, OnItemClickListener listener) {
                super(v);
                mTextView = v;
                mListener = listener;

                v.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        mListener.onItemClick(view, getAdapterPosition());
                    }
                });
            }
        }

        // Provide a suitable constructor (depends on the kind of dataset)
        public SimpleAdapter(List<Contributor> myDataset, ViewHolder.OnItemClickListener listener) {
            mDataset = myDataset;
            mListener = listener;
        }

        ViewHolder.OnItemClickListener mListener;

        public Contributor getItem(int position) {
            return mDataset.get(position);
        }

        @Override
        public SimpleAdapter.ViewHolder onCreateViewHolder(ViewGroup parent,
                                                           int viewType) {
            // create a new view
            View v = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.list_item, parent, false);
            ViewHolder vh = new ViewHolder((TextView) v.findViewById(R.id.text), mListener);
            return vh;
        }

        @Override
        public void onBindViewHolder(ViewHolder holder, int position) {
            // - get element from your dataset at this position
            // - replace the contents of the view with that element
            holder.mTextView.setText(mDataset.get(position).getLogin());

        }

        @Override
        public int getItemCount() {
            return mDataset.size();
        }
    }
}
