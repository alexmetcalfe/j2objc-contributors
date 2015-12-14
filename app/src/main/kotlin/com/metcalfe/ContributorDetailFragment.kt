package com.metcalfe

import android.app.Fragment
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView

import butterknife.Bind
import butterknife.ButterKnife

/**
 * Created by alex on 12/07/15.
 */
class ContributorDetailFragment : Fragment() {

    @Bind(R.id.detailText)
    lateinit var mDetailText: TextView

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_detail, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        ButterKnife.bind(this, view)

        if (arguments != null) {
            val contributions = arguments.getInt("contributions")

            mDetailText.text = "Contributions: " + contributions
        }

    }

    companion object {

        fun newInstance(contributons: Int): Fragment {
            val f = ContributorDetailFragment()

            val b = Bundle()
            b.putInt("contributions", contributons)
            f.arguments = b

            return f
        }
    }
}
