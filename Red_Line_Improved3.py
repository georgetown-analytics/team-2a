# -*- coding: utf-8 -*-
"""
Created on Mon Aug 15 21:07:23 2016

@author: Micah
"""
#This script looks at what might happen if Tier 5 delays were cut in half.
#With Red Line trains running at a weighted average of every 10 minutes throughout
#the day, this would also eliminate compounding delays on this line.

import random
import simpy

class EV:
    def __init__(self, env):
        self.env = env
        self.metro_process = env.process(self.drive(env))
        self.resume = env.event()
        
    def drive(self,env):
        while True:
            yield env.timeout(10720)
            noise = random.normalvariate(400, 100)
            yield env.timeout(noise)
            
            tier_1 = (0,0,4,4,4,4,4,4,4,4)
            tier_1_1 = random.choice(tier_1)
            yield env.timeout(tier_1_1)

            tier_2 = (0,0,0,0,0,0,5,5,5,5)
            tier_2_2 = random.choice(tier_2)
            yield env.timeout(tier_2_2)           

            tier_3 = (6,6,6,6,6,6,6,6,6,6)
            tier_3_3 = random.choice(tier_3)
            yield env.timeout(tier_3_3)  

            tier_4 = (8,8,8,8,8,8,8,8,8,8)
            tier_4_4 = random.choice(tier_4)
            yield env.timeout(tier_4_4)            

            tier_5 = (0,0,0,9,9,9,9,9,9,9)
            tier_5_5 = random.choice(tier_5)
            yield env.timeout(tier_5_5)    

            print(env.now)
            self.resume.succeed()
            self.resume = env.event()
        
            
env = simpy.Environment()
ev = EV(env)
env.run(until=3376800)