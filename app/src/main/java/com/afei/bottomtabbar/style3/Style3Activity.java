package com.afei.bottomtabbar.style3;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.util.SparseArray;
import android.view.View;
import android.widget.RadioGroup;

import com.afei.bottomtabbar.BlankFragment;
import com.afei.bottomtabbar.R;
import com.afei.bottomtabbar.dynamic.DynamicActivity;
import com.afei.bottomtabbar.submenu_fragments.mine_fragment;
import com.afei.bottomtabbar.submenu_fragments.settings_fragment;
import com.afei.bottomtabbar.submenu_fragments.shouye_fragment;
import com.afei.bottomtabbar.submenu_fragments.xiaoxi_fragment;

public class Style3Activity extends AppCompatActivity{

    private RadioGroup mTabRadioGroup;
    private SparseArray<Fragment> mFragmentSparseArray;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_style3);
        initView();
    }

    private void initView() {
        mTabRadioGroup = findViewById(R.id.tabs_rg);
        mFragmentSparseArray = new SparseArray<>();
        mFragmentSparseArray.append(R.id.today_tab,new shouye_fragment());
        mFragmentSparseArray.append(R.id.record_tab,new xiaoxi_fragment());
        mFragmentSparseArray.append(R.id.contact_tab,new mine_fragment());
        mFragmentSparseArray.append(R.id.settings_tab,new settings_fragment());
        mTabRadioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,
                        mFragmentSparseArray.get(checkedId)).commit();
            }
        });

        // 默认显示第一个
        getSupportFragmentManager().beginTransaction().add(R.id.fragment_container,
                mFragmentSparseArray.get(R.id.today_tab)).commit();
        findViewById(R.id.sign_iv).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(Style3Activity.this,DynamicActivity.class));
            }
        });
    }


}