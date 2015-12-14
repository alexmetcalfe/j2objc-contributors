package com.metcalfe

import android.app.Fragment
import android.content.Intent
import android.os.AsyncTask
import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import butterknife.Bind
import butterknife.ButterKnife
import com.metcalfe.model.Contributor
import com.metcalfe.service.ContributorMapper
import com.metcalfe.service.GitHubService
import com.metcalfe.service.GitHubServiceImpl
import com.metcalfe.service.SimpleHttpClient
import java.util.*

/**
 * A placeholder fragment containing a simple view.
 */
class ContributorListFragment : Fragment() {

    lateinit  var mGitHubService: GitHubService

    @Bind(R.id.contributors)
    lateinit var mRecyclerView: RecyclerView

    private var mAdapter: SimpleAdapter? = null

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_contributors, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        ButterKnife.bind(this, view)

        mGitHubService = GitHubServiceImpl(SimpleHttpClient(), ContributorMapper())

        val mLayoutManager = LinearLayoutManager(this.activity)
        mRecyclerView.layoutManager = mLayoutManager

        LoadContributorsTask().execute()
    }

    private inner class LoadContributorsTask : AsyncTask<Void, Void, List<Contributor>>() {
        override fun onPostExecute(contributors: List<Contributor>) {
            super.onPostExecute(contributors)
            mAdapter = SimpleAdapter(contributors, object : SimpleAdapter.ViewHolder.OnItemClickListener {
                override fun onItemClick(view: View, position: Int) {
                    val contributor = mAdapter!!.getItem(position)

                    var intent = Intent(activity, ContributorDetailActivity::class.java)
                    intent.putExtra("contributions", contributor.contributions)
                    startActivityForResult(intent, 0)
                }
            })
            mRecyclerView.adapter = mAdapter
        }

        override fun doInBackground(vararg params: Void): List<Contributor> {
            try {
                return mGitHubService.contributors()
            } catch(e: Exception) {
                return Collections.emptyList()
            }
        }

    }

    class SimpleAdapter
    (private val mDataset: List<Contributor>, internal var mListener:

    SimpleAdapter.ViewHolder.OnItemClickListener) : RecyclerView.Adapter<SimpleAdapter.ViewHolder>() {

        class ViewHolder(var mTextView: TextView, internal val mListener: ViewHolder.OnItemClickListener) : RecyclerView.ViewHolder(mTextView) {

            interface OnItemClickListener {
                fun onItemClick(view: View, position: Int)
            }

            init {

                mTextView.setOnClickListener { view -> mListener.onItemClick(view, adapterPosition) }
            }
        }

        fun getItem(position: Int): Contributor {
            return mDataset[position]
        }

        override fun onCreateViewHolder(parent: ViewGroup,
                                        viewType: Int): SimpleAdapter.ViewHolder {
            // create a new view
            val v = LayoutInflater.from(parent.context).inflate(R.layout.list_item, parent, false)
            val vh = ViewHolder(v.findViewById(R.id.text) as TextView, mListener)
            return vh
        }

        override fun onBindViewHolder(holder: ViewHolder, position: Int) {
            // - get element from your dataset at this position
            // - replace the contents of the view with that element
            holder.mTextView.text = mDataset[position].login

        }

        override fun getItemCount(): Int {
            return mDataset.size
        }
    }

}
