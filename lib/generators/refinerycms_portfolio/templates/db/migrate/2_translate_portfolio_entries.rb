class TranslatePortfolioEntries < ActiveRecord::Migration

  def self.up
    PortfolioEntry.create_translation_table!({
      :title => :string,
      :body => :text
    }, {
      :migrate_date => true
    })
  end

  def self.down
    PortfolioEntry.drop_translations_table! :migrate_data => true
  end

end
