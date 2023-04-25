view: pendo_march_2023_nps_combined_responses {
    sql_table_name: pendo_data.pendoMarch2023NPS ;;

    dimension: accountid {
#      primary_key: yes
      type: string
      sql: ${TABLE}.accountId ;;
    }

    dimension_group: quantitativetime {
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year
      ]
      convert_tz: no
      datatype: date
      sql: ${TABLE}.quantitativeTime ;;
    }

    dimension: qualitativeresponse {
      type: string
      sql: ${TABLE}.qualitativeResponse ;;
    }

    dimension: quantitativeresponse {
      type: number
      sql: ${TABLE}.quantitativeResponse ;;
    }

    dimension: visitorid {
      type: string
      sql: ${TABLE}.visitorId ;;
    }

    dimension: promoters {
      hidden: yes
      type: number
      sql: case when ${quantitativeresponse}>=9 then 1 else 0 end ;;
    }

    dimension: detractors {
      hidden: yes
      type: number
      sql: case when ${quantitativeresponse}<=6 then 1 else 0 end ;;
    }

    dimension: passives {
      hidden: yes
      type: number
      sql: case when ${quantitativeresponse} in (7,8) then 1 else 0 end ;;
    }

    measure: count {
      label: "Number of Responses"
      type: count
      drill_fields: [accountid, quantitativeresponse, qualitativeresponse, count]
    }

    measure: total_promoters {
      label: "Number of Promoters"
      type: sum
      sql: ${promoters} ;;
      drill_fields: [accountid, quantitativeresponse, qualitativeresponse]
    }

    measure: total_detractors {
      label: "Number of Detractors"
      type: sum
      sql: ${detractors} ;;
      drill_fields: [accountid, quantitativeresponse, qualitativeresponse]
    }

    measure: total_passives {
      label: "Number of Passives"
      type: sum
      sql: ${passives} ;;
      drill_fields: [accountid, quantitativeresponse, qualitativeresponse]
    }

    measure: nps_rating {
      label: "NPS Rating"
      type: sum
      sql: ${quantitativeresponse} ;;
    }

    measure: avg_nps_rating {
      label: "Average NPS Rating"
      type: average
      sql: ${quantitativeresponse} ;;
      value_format_name: decimal_1
    }
  }
