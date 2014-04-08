before do 
  Timecop.freeze(VCR.current_cassette.originally_recorded_at || Time.now)
end
  
after do
  Timecop.return
end
