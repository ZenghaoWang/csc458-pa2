# CSC458 PA2: Bufferbloat

## Instructions to Reproduce Results

```bash
sudo ./run.sh
```

This command will generate plots for cwnd, rtt, and bottleneck queue size for each router buffer size to ``bb-q20`` and ``bb-q100``. 

Note that in addition to generating graphs, this will write a ``statistics.txt`` file to ``bb-q20`` and ``bb-q100``, each containing the average webpage fetch times for the corresponding queue sizes. 

## Questions

1. Why do you see a difference in webpage fetch times with small and large router buffers?

From ``bb-q20/statistics.txt`` and ``bb-q100/statistics.txt``, we can see that the average fetch time increases with a larger router buffer size. 

2. Bufferbloat can occur in other places such as your network interface card (NIC). Check the output of ifconfig eth0 on your VirtualBox VM. What is the (maximum) transmit queue length on the network interface reported by ifconfig? For this queue size and a draining rate of 100 Mbps, what is the maximum time a packet might wait in the queue before it leaves the NIC?

Max transit queue length = txqueuelen = 1000. 

The maximum time a packet can wait in the queue is if the queue is full and the packet is at the very end. 
Ipconfig reports that the MTU is 1500, so the queue can hold at most 1000 packets x 1500 bytes = 1500000 bytes. 


3. How does the RTT reported by ping vary with the queue size? Write a symbolic equation to describe the relation between the two (ignore computation overheads in ping that might affect the final result).

4. Identify and describe two ways to mitigate the bufferbloat problem.