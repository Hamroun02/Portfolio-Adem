package com.example.myapplication;

import android.app.AlertDialog;
import android.content.pm.PackageManager;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.telephony.SmsManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;
import java.util.List;

public class Adapter extends RecyclerView.Adapter<Adapter.ViewHolder> {
    Context context;
    ArrayList<Model> modelArrayList;

    public Adapter(Context context, ArrayList<Model> modelArrayList) {
        this.context = context;
        this.modelArrayList = modelArrayList;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.item_layout, parent, false);
        return new ViewHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        holder.number.setText(modelArrayList.get(position).getName());
        holder.name.setText(modelArrayList.get(position).getNumber());

        holder.call.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int pos = holder.getAdapterPosition();
                if (pos != RecyclerView.NO_POSITION) {
                    String number = modelArrayList.get(pos).getNumber();
                    if (ActivityCompat.checkSelfPermission(context, android.Manifest.permission.CALL_PHONE) != PackageManager.PERMISSION_GRANTED) {
                        // Demander la permission de passer un appel si nécessaire
                        ActivityCompat.requestPermissions((Activity) context, new String[]{android.Manifest.permission.CALL_PHONE}, 1);
                    } else {
                        Intent in = new Intent(Intent.ACTION_CALL);
                        in.setData(Uri.parse("tel:" + number));
                        context.startActivity(in);
                    }
                }
            }
        });

        holder.sms.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int pos = holder.getAdapterPosition();
                if (pos != RecyclerView.NO_POSITION) {
                    final EditText message = new EditText(context);
                    message.setHint("Type your message...");
                    message.setText("Hello");

                    final AlertDialog.Builder sending_msg = new AlertDialog.Builder(context);
                    sending_msg.setIcon(R.drawable.email_envelope_inbox_mail_message_send_svgrepo_com)
                            .setTitle("SEND TO: " + modelArrayList.get(pos).getNumber())
                            .setView(message)
                            .setPositiveButton("SEND", new DialogInterface.OnClickListener() {
                                @Override
                                public void onClick(DialogInterface dialog, int which) {
                                    sendSMS(modelArrayList.get(pos).getName(), message.getText().toString());
                                }
                            })
                            .setNegativeButton("CANCEL", new DialogInterface.OnClickListener() {
                                @Override
                                public void onClick(DialogInterface dialog, int which) {
                                    dialog.dismiss();
                                }
                            }).create();
                    sending_msg.show();
                }
            }
        });
    }
   public void filterlist(List<Model>filterlist){
        modelArrayList = (ArrayList<Model>) filterlist;
        notifyDataSetChanged();
   }
    private void sendSMS(String phoneNumber, String message) {
        try {
            SmsManager smsManager = SmsManager.getDefault();
            smsManager.sendTextMessage(phoneNumber, null, message, null, null);
            Toast.makeText(context, "Message sent to: " + phoneNumber, Toast.LENGTH_SHORT).show();
        } catch (Exception exception) {
            Toast.makeText(context, "Something went wrong...", Toast.LENGTH_SHORT).show();
        }
    }

    @Override
    public int getItemCount() {
        return modelArrayList.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        TextView name, number;
        ImageView call, sms;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            name = itemView.findViewById(R.id.contact_name);
            number = itemView.findViewById(R.id.contact_number);
            call = itemView.findViewById(R.id.call);
            sms = itemView.findViewById(R.id.msg);
        }
    }
}
