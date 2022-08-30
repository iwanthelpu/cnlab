#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>

#define NOF_PACKETS 10

int rand_gen(int a)
{
    int rn = (random() % 10) % a;
    return  rn == 0 ? 1 : rn;
}

int main()
{
    int packet_size[NOF_PACKETS], i, clk, bucket_size, o_rate, p_size_remaining=0, p_time, op;
    for(i = 0; i<NOF_PACKETS; ++i)
        packet_size[i] = rand_gen(6) * 10;
    for(i = 0; i<NOF_PACKETS; ++i)
        printf("\npacket[%d]:%d bytes\t", i, packet_size[i]);
    printf("\nEnter the Output rate:");
    scanf("%d", &o_rate);
    printf("Enter the Bucket Size:");
    scanf("%d", &bucket_size);
    for(i = 0; i<NOF_PACKETS; ++i)
    {
        if( (packet_size[i] + p_size_remaining) > bucket_size)
            if(packet_size[i] > bucket_size)/*compare the packet siz with bucket size*/
                printf("\n\nIncoming packet size (%dbytes) is Greater than bucket capacity (%dbytes)-PACKET REJECTED", packet_size[i], bucket_size);
            else
                printf("\n\nBucket capacity exceeded-PACKETS REJECTED!!");
        else
        {
            p_size_remaining += packet_size[i];
            printf("\n\nIncoming Packet size: %d", packet_size[i]);
            printf("\nBytes remaining to Transmit: %d", p_size_remaining);
            p_time = rand_gen(4) * 10;
            printf("\nTime left for transmission: %d units", p_time);
            for(clk = 10; clk <= p_time; clk += 10)
            {
                sleep(1);
                if(p_size_remaining)
                {
                    if(p_size_remaining <= o_rate)/*packet size remaining comparing with output rate*/
                        op = p_size_remaining, p_size_remaining = 0;
                    else
                        op = o_rate, p_size_remaining -= o_rate;
                    printf("\nPacket of size %d Transmitted", op);
                    printf("----Bytes Remaining to Transmit: %d", p_size_remaining);
                }
                else
                {
                    printf("\nTime left for transmission: %d units", p_time-clk);
                    printf("\nNo packets to transmit!!");
                }
            }
        }
    }
}