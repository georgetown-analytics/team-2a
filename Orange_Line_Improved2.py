# -*- coding: utf-8 -*-
"""
Created on Fri Aug 19 21:25:15 2016

@author: Micah
"""

import random
import simpy

class EV:
    def __init__(self, env):
        self.env = env
        self.metro_process = env.process(self.drive(env))
        self.resume = env.event()
        
    def drive(self,env):
        while True:
            yield env.timeout(7695)
            noise = random.normalvariate(400, 100)
            yield env.timeout(noise)
            
            tier_1 = (0,0,0,0,0,0,0,2,2,2)
            tier_1_1 = random.choice(tier_1)
            yield env.timeout(tier_1_1)

            tier_2 = (0,0,0,0,0,0,0,0,0,3)
            tier_2_2 = random.choice(tier_2)
            yield env.timeout(tier_2_2)           

            tier_3 = (0,4,4,4,4,4,4,4,4,4)
            tier_3_3 = random.choice(tier_3)
            yield env.timeout(tier_3_3)  
            
            tier_3a = (0,0,0,0,0,0,0,0,4,4)
            tier_3_3a = random.choice(tier_3a)
            yield env.timeout(tier_3_3a)            

            tier_4 = (0,0,0,0,0,6,6,6,6,6)
            tier_4_4 = random.choice(tier_4)
            yield env.timeout(tier_4_4)            

            tier_5 = (0,0,0,0,0,20,20,20,20,20)
            tier_5_5 = random.choice(tier_5)
            yield env.timeout(tier_5_5)    

            print(env.now)
            self.resume.succeed()
            self.resume = env.event()
        
            
env = simpy.Environment()
ev = EV(env)
env.run(until=2500875)