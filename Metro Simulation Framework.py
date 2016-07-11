# -*- coding: utf-8 -*-
"""
Created on Thu Jun 16 21:47:20 2016

@author: Micah
"""

from random import randint
import random
from random import choice, sample
import simpy

class EV:
    def __init__(self, env):
        self.env = env
        self.metro_process = env.process(self.drive(env))
        self.stop_process = env.process(self.delay(env))
        self.resume = env.event()
        
    def drive(self,env):
        while True:
            yield env.timeout(8)
	    #random interrupt is a placeholder
            s=set(range(0,5))
            fire_prob = random.choice (list(s))
            yield env.timeout(fire_prob)
            print('Train arrives at Spring Hill at', env.now)
            self.resume.succeed()
            self.resume = env.event()
            yield env.timeout(.5)
            print ('Train leaves Springhill at', env.now)
            
            yield env.timeout(2)
            items = (1,3,2,7)
	    #random interrupt is a placeholder
            t = random.choice(items)
            yield env.timeout(t)
            print('Train arrives at Greensboro at', env.now)
            self.resume.succeed()
            self.resume = env.event()
            yield env.timeout(.5)
            print ('Train leaves Greensboro at', env.now) 
            
            yield env.timeout(2)
            print('Train arrives at Tysons Corner at', env.now)
            self.resume.succeed()
            self.resume = env.event()
            yield env.timeout(.5)
            print ('Train leaves Tysons Corner at', env.now) 
            
            yield env.timeout(randint(3,5))
            print('Train experiences delay on way to McLean and arrives at', env.now)
            self.resume.succeed()
            self.resume = env.event()
            yield env.timeout(0.5)
            print ('Train leaves McLean at', env.now)            
        
    def delay(self, env):
        while True:
            yield self.resume
            print('Train stops to unload/reload at', env.now)
            
env = simpy.Environment()
ev = EV(env)
env.run(until=20)
