context("hot_to_r() tests")

test_that("hot_to_r() on mtcars works", {
  tbl <- list(
    data = list(
      list(21L, 6L, 160L, 110L, 3.9, 2.62, 16.46,
           0L, 1L, 4L, 4L),
      list(21L, 6L, 160L, 110L, 3.9, 2.875, 17.02,
           0L, 1L, 4L, 4L),
      list(22.8, 4L, 108L, 93L, 3.85, 2.32, 18.61,
           1L, 1L, 4L, 1L),
      list(21.4, 6L, 258L, 110L, 3.08, 3.215,
           19.44, 1L, 0L, 3L, 1L),
      list(18.7, 8L, 360L, 175L, 3.15,
           3.44, 17.02, 0L, 0L, 3L, 2L)
    ),
    changes = list(event = "afterChange",
                   changes = NULL),
    params = list(
      data = list(
        list(21L, 6L,
             160L, 110L, 3.9, 2.62, 16.46, 0L, 1L, 4L, 4L),
        list(21L,
             6L, 160L, 110L, 3.9, 2.875, 17.02, 0L, 1L, 4L, 4L),
        list(22.8, 4L, 108L, 93L, 3.85, 2.32, 18.61, 1L, 1L, 4L, 1L),
        list(21.4, 6L, 258L, 110L, 3.08, 3.215, 19.44, 1L, 0L, 3L,
             1L),
        list(18.7, 8L, 360L, 175L, 3.15, 3.44, 17.02, 0L,
             0L, 3L, 2L)
      ),
      rClass = "data.frame",
      rColClasses = list(
        mpg = "numeric",
        cyl = "numeric",
        disp = "numeric",
        hp = "numeric",
        drat = "numeric",
        wt = "numeric",
        qsec = "numeric",
        vs = "numeric",
        am = "numeric",
        gear = "numeric",
        carb = "numeric"
      ),
      rColnames = list(
        "mpg",
        "cyl",
        "disp",
        "hp",
        "drat",
        "wt",
        "qsec",
        "vs",
        "am",
        "gear",
        "carb"
      ),
      rColHeaders = list(
        "mpg",
        "cyl",
        "disp",
        "hp",
        "drat",
        "wt",
        "qsec",
        "vs",
        "am",
        "gear",
        "carb"
      ),
      rRowHeaders = list(
        "Mazda RX4",
        "Mazda RX4 Wag",
        "Datsun 710",
        "Hornet 4 Drive",
        "Hornet Sportabout"
      ),
      rDataDim = list(5L, 11L),
      selectCallback = FALSE,
      colHeaders = list(
        "mpg",
        "cyl",
        "disp",
        "hp",
        "drat",
        "wt",
        "qsec",
        "vs",
        "am",
        "gear",
        "carb"
      ),
      rowHeaders = list(
        "Mazda RX4",
        "Mazda RX4 Wag",
        "Datsun 710",
        "Hornet 4 Drive",
        "Hornet Sportabout"
      ),
      columns = list(
        list(
          type = "numeric",
          numericFormat = list(pattern = "0.00"),
          default = NULL
        ),
        list(
          type = "numeric",
          numericFormat = list(pattern = "0.00"),
          default = NULL
        ),
        list(
          type = "numeric",
          numericFormat = list(pattern = "0.00"),
          default = NULL
        ),
        list(
          type = "numeric",
          numericFormat = list(pattern = "0.00"),
          default = NULL
        ),
        list(
          type = "numeric",
          numericFormat = list(pattern = "0.00"),
          default = NULL
        ),
        list(
          type = "numeric",
          numericFormat = list(pattern = "0.00"),
          default = NULL
        ),
        list(
          type = "numeric",
          numericFormat = list(pattern = "0.00"),
          default = NULL
        ),
        list(
          type = "numeric",
          numericFormat = list(pattern = "0.00"),
          default = NULL
        ),
        list(
          type = "numeric",
          numericFormat = list(pattern = "0.00"),
          default = NULL
        ),
        list(
          type = "numeric",
          numericFormat = list(pattern = "0.00"),
          default = NULL
        ),
        list(
          type = "numeric",
          numericFormat = list(pattern = "0.00"),
          default = NULL
        )
      ),
      width = NULL,
      height = NULL,
      debug = 0L,
      search = FALSE,
      stretchH = "none",
      comments = FALSE,
      contextMenu = list(
        items = list(
          row_above = list(),
          row_below = list(),
          remove_row = list(),
          hsep3 = list(name = "---------", key = "hsep3"),
          undo = list(),
          redo = list(),
          hsep4 = list(name = "---------", key = "hsep4"),
          alignment = list()
        )
      )
    )
  )

  expect_equal(hot_to_r(tbl), head(mtcars, 5))

})

test_that("hot_to_r() works on my table", {
  tbl <-
    list(
      data = list(
        list(
          1L,
          0L,
          list(list("6043"), list("6050")),
          "Full-time Sales Associate - Collins St./ Chadstone",
          list(list("seek-18578")),
          "50644713",
          200L,
          "SOLR"
        ),
        list(
          2L,
          0L,
          list(list("6043"), list("6050")),
          "Bicycle Sales Consultant",
          list(list("seek-18578")),
          "50642269",
          199L,
          "SOLR"
        ),
        list(
          3L,
          0L,
          list(list("6043"), list("6050")),
          "Retail Assistant - Abbotsford/Fitzroy 20-25 hrs P/W",
          list(list("seek-18578")),
          "50638436",
          198L,
          "SOLR"
        ),
        list(
          4L,
          0L,
          list(list("6043"), list("6050")),
          "Casual Sales Consultant || Dion Lee",
          list(list("seek-11318")),
          "50644057",
          11L,
          "SOLR"
        ),
        list(
          5L,
          0L,
          list(list("6043"), list("6050")),
          "STORE MANAGER & SALES ASSISTANTS - Merrifield, Victoria",
          list(list("seek-18578"), list("seek-5072")),
          "50640541",
          10L,
          "SOLR"
        )
      ),
      changes = list(event = "afterChange", changes = NULL),
      params = list(
        data = list(
          list(
            1L,
            0L,
            list(list("6043"),
                 list("6050")),
            "Full-time Sales Associate - Collins St./ Chadstone",
            list(list("seek-18578")),
            "50644713",
            200L,
            "SOLR"
          ),
          list(
            2L,
            0L,
            list(list("6043"), list("6050")),
            "Bicycle Sales Consultant",
            list(list("seek-18578")),
            "50642269",
            199L,
            "SOLR"
          ),
          list(
            3L,
            0L,
            list(list("6043"), list("6050")),
            "Retail Assistant - Abbotsford/Fitzroy 20-25 hrs P/W",
            list(list("seek-18578")),
            "50638436",
            198L,
            "SOLR"
          ),
          list(
            4L,
            0L,
            list(list("6043"), list("6050")),
            "Casual Sales Consultant || Dion Lee",
            list(list("seek-11318")),
            "50644057",
            11L,
            "SOLR"
          ),
          list(
            5L,
            0L,
            list(list("6043"), list("6050")),
            "STORE MANAGER & SALES ASSISTANTS - Merrifield, Victoria",
            list(list("seek-18578"), list("seek-5072")),
            "50640541",
            10L,
            "SOLR"
          )
        ),
        rClass = list("tbl_df", "tbl", "data.frame"),
        rColClasses = list(
          rank = "integer",
          relevance = "numeric",
          categories = "list",
          title = "character",
          locations = "list",
          job_id = "character",
          score = "integer",
          tag = "character"
        ),
        rColnames = list(
          "rank",
          "relevance",
          "categories",
          "title",
          "locations",
          "job_id",
          "score",
          "tag"
        ),
        rColHeaders = list(
          "rank",
          "relevance",
          "categories",
          "title",
          "locations",
          "job_id",
          "score",
          "tag"
        ),
        rRowHeaders = NULL,
        rDataDim = list(5L, 8L),
        selectCallback = FALSE,
        colHeaders = list(
          "rank",
          "relevance",
          "categories",
          "title",
          "locations",
          "job_id",
          "score",
          "tag"
        ),
        rowHeaders = list("1",
                          "2", "3", "4", "5"),
        columns = list(
          list(
            type = "numeric",
            numericFormat = list(pattern = "0"),
            default = NULL
          ),
          list(
            type = "numeric",
            numericFormat = list(pattern = "0.00"),
            default = NULL
          ),
          list(type = "text", default = NULL),
          list(type = "text", default = NULL),
          list(type = "text",
               default = NULL),
          list(type = "text", default = NULL),
          list(
            type = "numeric",
            numericFormat = list(pattern = "0"),
            default = NULL
          ),
          list(type = "text", default = NULL)
        ),
        width = NULL,
        height = NULL,
        debug = 0L,
        search = FALSE,
        stretchH = "none",
        comments = FALSE,
        contextMenu = list(
          items = list(
            row_above = list(),
            row_below = list(),
            remove_row = list(),
            hsep3 = list(name = "---------",
                         key = "hsep3"),
            undo = list(),
            redo = list(),
            hsep4 = list(name = "---------", key = "hsep4"),
            alignment = list()
          )
        )
      )
    )

  expect_error(hot_to_r(tbl), "Change no recognized:afterChange")

})
