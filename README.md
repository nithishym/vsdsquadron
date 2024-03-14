# vsdsquadron
This repo is intended to document the weekly progress
TASK 1 

1.install Yosys

2.install iverilog

3.install gtkwave

# To install git
```sudo apt install git-all```
![IMG_7960](https://github.com/nithishym/vsdsquadron/assets/160588484/983b573a-076b-49fb-914b-57337d8c2e08)

INSTALLING YOSYS, IVERILOG & GTKWAVE
1.YOSYS
```git clone https://github.com/YosysHQ/yosys.git```  


```cd yosys```
```sudo apt install make```

![IMG_7961](https://github.com/nithishym/vsdsquadron/assets/160588484/7b0dcffe-e206-45ed-aea2-6111fc9ebe7b)  
```make```  
```sudo make install```

![IMG_7962](https://github.com/nithishym/vsdsquadron/assets/160588484/1012f1a4-4f05-4a19-a7a9-093c78898550)  

2.iVerilog
```sudo apt update```
```sudo apt-get install iverilog```

![IMG_7962](https://github.com/nithishym/vsdsquadron/assets/160588484/c3f8b5c8-afe2-42c2-b234-2cc89a78b776)  

3.GTkWave
```sudo apt-get install gtkwave```

![IMG_7968](https://github.com/nithishym/vsdsquadron/assets/160588484/12b9896d-4433-4765-b77c-11263a5cf461)


TASK 2


![WhatsApp Image 2024-02-23 at 11 33 31 AM (1)](https://github.com/nithishym/vsdsquadron/assets/160588484/4cd08ff3-7397-46ac-80b7-2c86bdebd744)


TASK 3



*Cloning my github repositories:*    
```git clone https://github.com/nithishym/vsdsquadron.git```


![WhatsApp Image 2024-03-13 at 10 12 31 PM](https://github.com/nithishym/vsdsquadron/assets/160588484/cdcc580d-6179-48f9-8e0f-18fb8e0a0710)

*Simulating iverilog by taking files from the folder verilog_code* 
```cd vsdsquadron```

```iverilog bcd_counter.v bcd_counter_tb.v```


*Generating dump_file*

```./a.out```


*To get I/O waveform*

```gtkwave wave.vcd```

![WhatsApp Image 2024-03-13 at 10 13 08 PM](https://github.com/nithishym/vsdsquadron/assets/160588484/4736f61a-8ffc-43e6-bf72-12fa17fc4544)


### Wave Forms:
###  *Input and Output waveform*


![WhatsApp Image 2024-03-13 at 10 16 06 PM (1)](https://github.com/nithishym/vsdsquadron/assets/160588484/c9aacf62-13df-4e22-8c3a-0a7195fe1ab1)


TASK 4

![WhatsApp Image 2024-03-13 at 10 27 41 PM](https://github.com/nithishym/vsdsquadron/assets/160588484/1617f8a4-0322-479e-a65e-7672e4a003a0)

![WhatsApp Image 2024-03-13 at 10 27 41 PM (1)](https://github.com/nithishym/vsdsquadron/assets/160588484/c3db5c0e-39e2-40d7-978a-772b7c9b9e1b)

![WhatsApp Image 2024-03-13 at 10 27 42 PM](https://github.com/nithishym/vsdsquadron/assets/160588484/9563c9ab-a553-443f-b222-84dbc0dce0e5)

![WhatsApp Image 2024-03-13 at 10 27 42 PM (1)](https://github.com/nithishym/vsdsquadron/assets/160588484/7615e86d-007b-427b-8e47-567adc932235)

![WhatsApp Image 2024-03-13 at 10 27 42 PM (2)](https://github.com/nithishym/vsdsquadron/assets/160588484/61dd1d87-96a5-4e80-bd6a-0bd0737e21bd)

![WhatsApp Image 2024-03-13 at 11 28 16 PM](https://github.com/nithishym/vsdsquadron/assets/160588484/1428658b-3e21-48dc-87f2-627b7e42ecb6)

![WhatsApp Image 2024-03-13 at 11 28 16 PM (1)](https://github.com/nithishym/vsdsquadron/assets/160588484/5388a88c-9d9e-4533-a4c3-edb9889e46aa)




###TASK 5




*Design file after git clone*

*We are checking gtkwave for the design*

```iverilog iiitb_bcdc.v iiitb_bcdc_tb.v```

```./a.out ```

``` gtkwave iiitb_bcdc.vcd```






### To generate netlist:

*Invoking yosys inside verilog_code file:* 

```yosys```

*Reading the Library:* 

```read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib```


*Reading the Design:*    

```read_verilog iiitb_bcdc.v```


*Specifying the module that we are synthesizing:*    

```synth -top iiitb_bcdc```


![first](https://github.com/nithishym/vsdsquadron/assets/160588484/b177cfd5-16a2-4224-a43f-23d16381159e)



*To generate the netlist:*    

```abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib```


![secong](https://github.com/nithishym/vsdsquadron/assets/160588484/d5b4d711-ad59-49e3-a19f-cd76ab2e9e70)



*To see the graphical version of the logic:*    

```show```


![3](https://github.com/nithishym/vsdsquadron/assets/160588484/c1d88d88-8c2d-40bd-8759-1cce3facc214)


![4](https://github.com/nithishym/vsdsquadron/assets/160588484/c00188ea-11d3-4055-a81e-ef12c6398ac6)


*To write the netlist:*    

```write_verilog netlist.v```

*Using the switch '-noattr' to get the simplified version of netlist file:*

```write_verilog -noattr netlist.v```

```show```
*To open the netlist:*    

```!gvim netlist.v``



![5](https://github.com/nithishym/vsdsquadron/assets/160588484/e38f6539-c720-4c02-bf44-cd0c01e6707a)



##Opening the Netlist File



![6](https://github.com/nithishym/vsdsquadron/assets/160588484/171190ad-d3fe-4ff0-9da2-c03bd2ac24c6)

![7](https://github.com/nithishym/vsdsquadron/assets/160588484/851e7388-2a9f-4e18-bb51-72d4331008af)

![8](https://github.com/nithishym/vsdsquadron/assets/160588484/80f7e2bd-2fe1-48de-9f2e-3fcb37117c93)

![9](https://github.com/nithishym/vsdsquadron/assets/160588484/d145a17d-4919-4048-8764-12a5e2831e07)

![10](https://github.com/nithishym/vsdsquadron/assets/160588484/200c482d-7acd-442b-9527-c3fe5a7519cb)




## GATE LEVEL SIMULATION TO RUN THE NETLIST

```iverilog primitives.v sky.v netlist.v iiitb_bcdc_tb.v```

```./a.out```

```gtkwave iiitb_bcdc.vcd```



![WhatsApp Image 2024-03-13 at 11 11 21 PM](https://github.com/nithishym/vsdsquadron/assets/160588484/061b7f48-1d51-4382-819c-ce84e6432e99)

![WhatsApp Image 2024-03-13 at 11 11 40 PM](https://github.com/nithishym/vsdsquadron/assets/160588484/7bcdf0c5-d24e-424b-ba99-d84d1c42b765)

![WhatsApp Image 2024-03-13 at 11 11 55 PM](https://github.com/nithishym/vsdsquadron/assets/160588484/37b646be-d903-46f1-a8a9-920cdfc08ab7)
























