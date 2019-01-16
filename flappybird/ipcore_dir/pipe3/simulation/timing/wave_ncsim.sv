
 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"


      waveform add -signals /pipe3_tb/status
      waveform add -signals /pipe3_tb/pipe3_synth_inst/bmg_port/CLKA
      waveform add -signals /pipe3_tb/pipe3_synth_inst/bmg_port/ADDRA
      waveform add -signals /pipe3_tb/pipe3_synth_inst/bmg_port/DOUTA
console submit -using simulator -wait no "run"
