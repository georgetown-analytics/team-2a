# -*- coding: utf-8 -*-
"""
Created on Mon Aug 15 21:38:32 2016

@author: Micah
"""

#Reduce probabilities in each Tier by 20% and by 2 minutes in severity.

import random
import simpy

class EV:
    def __init__(self, env):
        self.env = env
        self.metro_process = env.process(self.drive(env))
        self.resume = env.event()
        
    def drive(self,env):
        while True:
            yield env.timeout(6400)
            noise = random.normalvariate(400, 100)
            yield env.timeout(noise)
            
            tier_1 = (0,0,0,0,0,0,0,0,0,0)
            tier_1_1 = random.choice(tier_1)
            yield env.timeout(tier_1_1)

            tier_2 = (0,0,0,0,0,0,0,0,0,0)
            tier_2_2 = random.choice(tier_2)
            yield env.timeout(tier_2_2)           

            tier_3 = (0,0,0,0,0,0,0,0,4,4)
            tier_3_3 = random.choice(tier_3)
            yield env.timeout(tier_3_3)  

            tier_4 = (0,0,0,0,0,0,0,6,6,6)
            tier_4_4 = random.choice(tier_4)
            yield env.timeout(tier_4_4)            

            tier_5 = (0,0,0,0,0,0,0,17,17,17)
            tier_5_5 = random.choice(tier_5)
            yield env.timeout(tier_5_5)    

            print(env.now)
            self.resume.succeed()
            self.resume = env.event()
        
            
env = simpy.Environment()
ev = EV(env)
env.run(until=2080000)