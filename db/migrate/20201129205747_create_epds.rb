class CreateEpds < ActiveRecord::Migration[5.2]
  def change
    create_table :epds, id: :uuid do |t|
      t.string :name
      t.string :classification
      t.text :general_comment
      t.string :data_set_lca_report
      t.decimal :generic_data_uncertaintiy_loads
      t.text :description_generic_data_uncertainty_loads
      t.string :scenario_name
      t.boolean :scenario_default
      t.string :scenario_group
      t.text :scenario_description
      t.string :module_name
      t.integer :module_product_system_id
      t.string :reference_flow
      t.string :functional_unit
      t.integer :reference_year
      t.integer :data_set_valid_until
      t.text :time_representativeness_description
      t.string :location
      t.text :geographical_representativeness_description
      t.text :technology_description
      t.text :technical_purpose_of_product
      t.string :pictogram_of_technology
      t.string :flow_diagram_picture
      t.string :lca_methodology_report
      t.text :subtype
      t.string :data_sources
      t.text :use_advise_for_data_set
      t.text :type_of_review
      t.text :review_details
      t.string :reviewer_name
      t.string :complete_review_report
      t.string :compliance_system_name
      t.string :data_set_format
      t.string :data_entry_by
      t.date :date_of_last_revision
      t.string :issuer
      t.string :registration_number
      t.string :owner_of_data_set
      t.boolean :copyright

      t.timestamps
    end
  end
end
