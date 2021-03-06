require "locke/config/mixin"

class MetricYoutube < ActiveRecord::Base
  include Locke::Config::Mixin
  include Locke::Dsl::Qdsl
  
  # Filter scopes
  scope :east,      -> { where("region = ?", "East") }
  scope :northeast, -> { where("region = ?", "Northeast") }
  scope :north,     -> { where("region = ?", "North") }
  scope :south,     -> { where("region = ?", "South") }
  scope :central,   -> { where("region = ?", "Central") }
  scope :bankgkok,  -> { where("region = ?", "Bangkok") }
  scope :asc_date_time,       -> { order(date_time: :asc) }
  scope :start,     ->(timestamp) { where("date_time >= ?", timestamp) }
  scope :stop,      ->(timestamp) { where("date_time < ?", timestamp) }
  scope :region,    ->(region) { region == "All" ? nil : where("region = ?", region) }
  scope :site,      ->(site) { site == "All" ? nil : where("apn like ?", "%#{site}%") }
  scope :apn,      ->(apn) { apn == "All" ? nil : where("apn = ?", apn) }
  scope :sgsn,      ->(sgsn) { sgsn == "All" ? nil : where(rncname: Sgsn.where(name: sgsn).first.rncs.map {|d| d.name}) }

  # Tell the front-end which attributes are measurable
  set_default :export_attr, [:avg_rssi, :avg_rxlev, :avg_ecio,
                              :youtube_rate, :youtube_qual_rate, :youtube_succ_rate,
                              :quality, :success, :attempt ]

end
