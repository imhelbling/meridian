Meridian = require "lib.meridian"



meridian = Meridian!

describe "Meridian", ->
    meridian = Meridian!

    context "military to meridian", ->
        it "00:00", ->
            assert.are.equal "12:00 am", meridian\from_military "00:00"
        it "00:01", ->
            assert.are.equal "12:01 am", meridian\from_military "00:01"
        it "01:00", ->
            assert.are.equal "1:00 am", meridian\from_military "01:00"
        it "13:00", ->
            assert.are.equal "1:00 pm", meridian\from_military "13:00"

    context "meridian to military", ->
        it "12:00 am", ->
            assert.are.equal "00:00", meridian\to_military "12:00 am"
        it "12:01 am", ->
            assert.are.equal "00:01", meridian\to_military "12:01 am"
        it "1:00 am", ->
            assert.are.equal "01:00", meridian\to_military "1:00 am"
        it "1:00 pm", ->
            assert.are.equal "13:00", meridian\to_military "1:00 pm"
        it "12:00 pm", ->
            assert.are.equal "12:00", meridian\to_military "12:00 pm"
