class AddKeys < ActiveRecord::Migration
  def change
    add_foreign_key "addresses", "labels", name: "addresses_label_id_fk"
    add_foreign_key "addresses_people", "addresses", name: "addresses_people_address_id_fk"
    add_foreign_key "addresses_people", "people", name: "addresses_people_person_id_fk"
    add_foreign_key "api_tokens", "people", name: "api_tokens_person_id_fk"
    add_foreign_key "contacts", "labels", name: "contacts_label_id_fk"
    add_foreign_key "contacts", "people", name: "contacts_person_id_fk"
    add_foreign_key "credentials", "emails", name: "credentials_email_id_fk"
    add_foreign_key "credentials", "people", name: "credentials_person_id_fk"
    add_foreign_key "devices", "people", name: "devices_person_id_fk"
    add_foreign_key "emails", "labels", name: "emails_label_id_fk"
    add_foreign_key "emails_people", "emails", name: "emails_people_email_id_fk"
    add_foreign_key "emails_people", "people", name: "emails_people_person_id_fk"
    add_foreign_key "last_logins", "people", name: "last_logins_person_id_fk"
    add_foreign_key "nicknames_people", "nicknames", name: "nicknames_people_nickname_id_fk"
    add_foreign_key "nicknames_people", "people", name: "nicknames_people_person_id_fk"
    add_foreign_key "people_phones", "people", name: "people_phones_person_id_fk"
    add_foreign_key "people_phones", "phones", name: "people_phones_phone_id_fk"
    add_foreign_key "phones", "carriers", name: "phones_carrier_id_fk"
    add_foreign_key "phones", "labels", name: "phones_label_id_fk"
    add_foreign_key "rate_infos", "clients", name: "rate_infos_client_id_fk"
  end
end
