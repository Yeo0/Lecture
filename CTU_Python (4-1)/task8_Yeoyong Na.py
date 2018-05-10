# -*- coding: utf-8 -*-
"""
Created on Sun Apr 22 23:08:50 2018

@author: USER
"""

import random
import threading, queue, sys, time

def getAliveWorkers(workers): #현재 동작중인 worker들 개수 확인
	count = 0
	for worker in workers:
		if worker.alive:
			count = count + 1
	return count

class Worker():
	def __init__(self, name, task_queue):
		self.alive = False
		self.orders = task_queue
		self.name = name
	
	def run(self):
		while self.alive:
			if not self.orders.empty():
				task = task_queue.get()
				print(task ** 2)
				task_queue.task_done()
				print("Worker {%s} report. %d tasks remain."%(self.name, self.orders.qsize()))
				time.sleep(3)
			else:
				self.stop()
			time.sleep(1)
	
	def start(self):
		self.alive = True
		t = threading.Thread(target=self.run)
		t.start()
	
	def stop(self):
		self.alive = False
		print("Worker {%s} stop"%(self.name))


task_queue = queue.Queue()
worker_number = 1
workers = []
worker = Worker("worker_0", task_queue)
worker.start()
workers.append(worker)

while True:
	try:
		number_of_tasks = task_queue.qsize()
		print("Inserting task. Queue currently contains: {}".format(number_of_tasks))
		
		task = random.random()
		task_queue.put(task)
		
		if (int(task_queue.qsize()-1)/30) > getAliveWorkers(workers):
			new_worker = Worker("worker_%d"%worker_number, task_queue)
			new_worker.start()
			workers.append(new_worker)
			worker_number = worker_number+1
		if task_queue.qsize() > 40:
			break
		time.sleep(0.5)
		
		
	except KeyboardInterrupt:
		alive = False
		print("Main loop exit.")
		sys.exit()