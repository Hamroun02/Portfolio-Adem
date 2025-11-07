package com.example.myapplication;

import android.database.Cursor;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.provider.ContactsContract;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Toast;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

import java.util.ArrayList;
import java.util.List;

public class ContactFragment extends Fragment {

    private EditText editText;
    private RecyclerView recyclerView;
    private ArrayList<Model> contactList;
    private Adapter adapter;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        View view = inflater.inflate(R.layout.fragment_contact, container, false);


        editText = view.findViewById(R.id.editTextText);
        recyclerView = view.findViewById(R.id.recycler_view_Contacts);
        contactList = new ArrayList<>();


        adapter = new Adapter(getContext(), contactList);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        recyclerView.setAdapter(adapter);


        readContacts();


        editText.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) { }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) { }

            @Override
            public void afterTextChanged(Editable s) {
                filterContacts(s.toString());
            }
        });


        getViewLifecycleOwner().getLifecycle().addObserver((LifecycleEventObserver) (source, event) -> {
            if (event == Lifecycle.Event.ON_RESUME) {
                refreshContacts();
            }
        });

        return view;
    }


    private void readContacts() {
        contactList.clear();
        Cursor cursor = null;
        try {
            cursor = getActivity().getContentResolver().query(
                    ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                    null,
                    null,
                    null,
                    ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME + " ASC" // Sort by name
            );

            if (cursor != null && cursor.moveToFirst()) {
                do {
                    String name = cursor.getString(cursor.getColumnIndexOrThrow(ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME));
                    String phone = cursor.getString(cursor.getColumnIndexOrThrow(ContactsContract.CommonDataKinds.Phone.NUMBER));


                    if (name != null && !name.isEmpty() && phone != null && !phone.isEmpty()) {
                        contactList.add(new Model(name, phone));
                    }
                } while (cursor.moveToNext());
            }


            adapter.notifyDataSetChanged();

        } catch (Exception e) {
            Toast.makeText(getContext(), "Error loading contacts", Toast.LENGTH_SHORT).show();
            e.printStackTrace();
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }


    private void refreshContacts() {
        readContacts();
        Toast.makeText(getContext(), "Contact list refreshed!", Toast.LENGTH_SHORT).show();
    }


    private void filterContacts(String query) {
        List<Model> filteredList = new ArrayList<>();
        for (Model contact : contactList) {
            if (contact.getName().toLowerCase().contains(query.toLowerCase()) ||
                    contact.getNumber().toLowerCase().contains(query.toLowerCase())) {
                filteredList.add(contact);
            }
        }
        adapter.filterlist(filteredList);
    }
}
