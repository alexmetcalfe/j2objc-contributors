package com.metcalfe

import android.app.Activity
import android.os.Bundle
import android.view.MenuItem

/**
 * Created by alex on 12/07/15.
 */
class ContributorDetailActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_detail)

        actionBar!!.setDisplayHomeAsUpEnabled(true)

        val ft = fragmentManager.beginTransaction()
        ft.add(R.id.content, ContributorDetailFragment.newInstance(intent.getIntExtra("contributions", 0))).commit()
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
        }
        return super.onOptionsItemSelected(item)
    }
}
