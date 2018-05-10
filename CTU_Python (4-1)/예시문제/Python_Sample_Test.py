
# coding: utf-8

# # Python Test Example Tasks
# 
# This is not the real test, just examples how the test tasks might look like. More examples may appear.
# 
# ## Task 1
# 
# Your task is to construct following CSV formated list from provided data (variables bellow - `html_data` and `json_data`):
# 
# name,age,origin,occupation<br>
# Joana Harjo,23,Mars,pilot<br>
# Chery Auvil,23,Pluto,pilot<br>
# Doris Walrath,29,Jupiter,researcher<br>
# Jasmine Botello,24,Saturn,researcher<br>
# Denisha Perera,23,Uranus,leader<br>
# Laurel Altizer,25,Neptun,researcher<br>
# Wynell Granda,25,Neptun,pilot<br>
# Lester Delao,22,Jupiter,pilot<br>
# Kaleigh Hamlin,24,Mars,engineer<br>
# Alonzo Zukowski,29,Earth,engineer<br>
# Odette Pursell,20,Earth,engineer<br>
# Willene Merck,29,Mars,pilot<br>
# Mui Delbosque,26,Mars,engineer<br>
# Rickie Selman,25,Earth,researcher<br>
# 
# Detail instructions:
# 1. get list of <b>people and their attributes</b> from table rows (`html_data`)
# 2. find who has <b>occupation</b> and who has not
# 3. <b>print only</b> the persons who have occupation and their attribute `alive` equals to Yes.
# 
# 
# Notes:
# - you should not copy/paste any part of input data. If the source data change, also the output of your code should change accordingly
# - probably the most easy solution is via libraries: `BeautifulSoup` and `json`. However feel free to use any other suitable library.
# - CSV format - comma separated values, newline for every record
# 

# In[44]:


html_data = """
<table class="tg"> <tr> <th class="tg-031e">Name</th> <th class="tg-031e">Age</th> <th class="tg-031e">Origin</th> <th class="tg-yw4l">Alive</th> </tr> <tr> <td class="tg-031e">Joana Harjo</td> <td class="tg-031e">23</td> <td class="tg-031e">Mars</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-031e">Chery Auvil</td> <td class="tg-031e">23</td> <td class="tg-031e">Pluto</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-huad">Cecily Soden</td> <td class="tg-huad">27</td> <td class="tg-huad">Earth</td> <td class="tg-i6eq">No</td> </tr> <tr> <td class="tg-031e">Doris Walrath</td> <td class="tg-031e">29</td> <td class="tg-031e">Jupiter</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-031e">Jasmine Botello</td> <td class="tg-031e">24</td> <td class="tg-031e">Saturn</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-031e">Denisha Perera</td> <td class="tg-031e">23</td> <td class="tg-031e">Uranus</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-031e">Laurel Altizer</td> <td class="tg-031e">25</td> <td class="tg-031e">Neptun</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-huad">Chieko Rosecrans</td> <td class="tg-huad">27</td> <td class="tg-huad">Mars</td> <td class="tg-i6eq">No</td> </tr> <tr> <td class="tg-031e">Wynell Granda</td> <td class="tg-031e">25</td> <td class="tg-031e">Neptun</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-031e">Lester Delao</td> <td class="tg-031e">22</td> <td class="tg-031e">Jupiter</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-031e">Kaleigh Hamlin</td> <td class="tg-031e">24</td> <td class="tg-031e">Mars</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-031e">Alonzo Zukowski</td> <td class="tg-031e">29</td> <td class="tg-031e">Earth</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-031e">Odette Pursell</td> <td class="tg-031e">20</td> <td class="tg-031e">Earth</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-huad">Danial Hite</td> <td class="tg-huad">20</td> <td class="tg-huad">Jupiter</td> <td class="tg-i6eq">No</td> </tr> <tr> <td class="tg-huad">Clayton Earnhardt</td> <td class="tg-huad">20</td> <td class="tg-huad">Mars</td> <td class="tg-i6eq">No</td> </tr> <tr> <td class="tg-031e">Willene Merck</td> <td class="tg-031e">29</td> <td class="tg-031e">Mars</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-031e">Mui Delbosque</td> <td class="tg-031e">26</td> <td class="tg-031e">Mars</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-huad">Kenya Washer</td> <td class="tg-huad">21</td> <td class="tg-huad">Earth</td> <td class="tg-i6eq">No</td> </tr> <tr> <td class="tg-031e">Rickie Selman</td> <td class="tg-031e">25</td> <td class="tg-031e">Earth</td> <td class="tg-yw4l">Yes</td> </tr> <tr> <td class="tg-031e">Marisa Gioia</td> <td class="tg-031e">24</td> <td class="tg-031e">Earth</td> <td class="tg-yw4l">Yes</td> </tr></table>
"""

json_data = """
{"researcher": ["Cecily Soden", "Doris Walrath", "Jasmine Botello", "Laurel Altizer", "Rickie Selman"], "pilot": ["Joana Harjo", "Chery Auvil", "Wynell Granda", "Lester Delao", "Willene Merck"], "engineer": ["Kaleigh Hamlin", "Alonzo Zukowski", "Odette Pursell", "Danial Hite", "Clayton Earnhardt", "Mui Delbosque", "Kenya Washer"], "leader": ["Denisha Perera", "Chieko Rosecrans"]}
"""


# ### Solution

# In[55]:


from bs4 import BeautifulSoup
import json

soup = BeautifulSoup(html_data, "html.parser")
json_dict = json.loads(json_data)  
occupations = json_dict.keys()

table = soup.find("table")
rows = table.find_all("tr")

names = []

lines = ["name,age,origin,occupation",]

for row in rows:
    cells = row.find_all("td")
    if cells:
        name = cells[0].text
        age = cells[1].text
        origin = cells[2].text
        alive = cells[3].text
        names.append(name)
        person_occupation = False
        for occupation in occupations:
            if name in json_dict[occupation]:
                person_occupation = occupation
        if alive == "Yes" and person_occupation:
            line = "{},{},{},{}".format(name, age, origin, person_occupation)
            lines.append(line)
                
for line in lines:
    print(line)
        

      

        


# In[42]:


# takto by vytvoren ten JSON

from bs4 import BeautifulSoup
import json

soup = BeautifulSoup(html_data, "html.parser")


table = soup.find("table")
rows = table.find_all("tr")

names = []

for row in rows:
    cells = row.find_all("td")
    if cells:
        name = cells[0].text
        age = cells[1].text
        origin = cells[2].text
        alive = cells[3].text
        names.append(name)
    
json_data = {}
json_data["leader"] = [names[i] for i in [5, 7]]
json_data["pilot"] = [names[i] for i in [0, 1, 8, 9, 15]]
json_data["researcher"] = [names[i] for i in [2, 3, 4, 6, 18]]
json_data["engineer"] = [names[i] for i in [10, 11, 12, 13, 14, 16, 17]]

json_out = json.dumps(json_data, indent=4, sort_keys=True)

json_out = json.dumps(json_data)

print(json_out)




# # Task 2
# 
# Obtain the figure bellow. Detail instructions:
# 
# 1. download html content from wikipedia page provided `url`
# 2. search for words (list `words`) in the html content and count their occurence
# 3. plot the occurence in bar chart
# 
# Notes:
# - you can ignore cleaning of html, converting to lowercase etc. Actual count do NOT need to be exactly the same as provided in figure.
# 
# <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAYgAAAEICAYAAABF82P+AAAABHNCSVQICAgIfAhkiAAAAAlwSFlz
# AAALEgAACxIB0t1+/AAAADl0RVh0U29mdHdhcmUAbWF0cGxvdGxpYiB2ZXJzaW9uIDIuMS4wLCBo
# dHRwOi8vbWF0cGxvdGxpYi5vcmcvpW3flQAAGgFJREFUeJzt3XmYXGWd9vHvTViVQIC0mbA2YHAG
# UBtp0GEbFhfgRQLKqgIBJDKCwqDMAM5oxnl5BxdgdHRgwiLwDgRQiKIiixkgQdZO2EIAISSZJISk
# DaugSMJv/jhPk5Py6e5K0lWnSN+f66qrz3nOUr9Tp7ruOkudo4jAzMys1hpVF2BmZq3JAWFmZlkO
# CDMzy3JAmJlZlgPCzMyyHBBmZpblgDBLJI2T9F9V12HWKhwQ1pIknS3pVzVtT/fSdlRzqzMbHBwQ
# 1qomA7tJGgIgaSSwFrBTTdt707h1U+Ed9d6XtGbVNdjg8476J7FB5UGKQOhI/XsCdwBP1bTNjIjn
# ACTtJulBSS+nv7v1zEzSnZLOlfQb4HVgG0lbS7pL0quSbgeG91WQpJMkPSPpBUk3Sdq0NGwHSben
# YQslnZPah0g6R9LM9DxTJW0hqV1SlD/4U42fT91jJP1G0oWSFgPjUvsJkp6Q9KKkWyVtVZo+JJ2c
# tqpekvRDSaqp/4lUxwxJH0rtm0q6QVK3pFmSvrwC68lWYw4Ia0kR8SfgfmCv1LQXMAW4u6ZtMoCk
# jYFfAt8HNgEuAH4paZPSbI8BxgJDgTnANcBUimD4F+C43uqRtC/wr8ARwMg0/bVp2FDg18AtwKYU
# WzWT0qRnAEcDBwIbACdQBFQ9Pgw8C4wAzpU0GjgH+BTQll6PCTXTHATsAnwg1fqJVOPhFCFzbKrj
# YGBx2pL6OfAIsBmwH3C6pE/UWaOtziLCDz9a8kHxgTYxdT8CjAL2r2k7LnUfAzxQM/29wJjUfSfw
# zdKwLYElwLtLbdcA/9VLLZcB3y71rw+8CbRTBMBDvUz3FDA6094OBLBmqe1O4POpewzwPzXT/Ao4
# sdS/BkXYbJX6A9ijNPx64KzUfStwWqaOD2ee52zgR1Wvfz+qf3gLwlrZZGCPtHXQFhFPA/dQHJvY
# GNiRZccfNqX4Vl82h+JbcY+5pe5NgRcj4rWa8Xuz3Pwj4vfA4jT/LYCZvUzX17D+zK3p3wr4Xtp9
# 9BLwAiCWX8bnS92vUwRZX3VsBWzaM88033MotlpskHNAWCu7F9gQOAn4DUBEvAI8l9qei4hZadzn
# KD7syrYE5pf6y5cuXgBsJOndNeP3Zrn5p+k2SfOfC2zTy3RzgW0z7T3B9K5S21/UjFN7qeW5wBci
# YljpsV5E3NNH3f3VMReYVTPPoRFxYB3ztNWcA8JaVkT8Aeii2I8/pTTo7tRWPnvpZmA7SZ+RtKak
# I4HtgV/0Mu85ad7/LGltSXsAn+yjnAnA8ZI6JK0D/D/g/oiYnZ5jpKTTJa0jaaikD6fpLgX+RdKo
# dPbUByRtEhHdFOHyuXQg+wTyH+BlFwNnS9oBQNKG6dhCPS4Fvipp51THe9MB7geAVyX9g6T1Ui07
# StqlzvnaaswBYa3uLuA9FKHQY0pqezsgImIxxQHar1Ds+vl74KCI+F0f8/4MxT74F4BvAFf1NmJE
# /Br4J+AGiq2PbYGj0rBXgY9RBMzzwNPAPmnSCyiOBdwGvEJxLGO9NOwk4MxU7w4Uu896FRETgW8B
# 10p6BZgOHNDXNKVpfwycS3Gc5VXgp8DGEbGU4nXrAGYBv6MIkw3rma+t3hThGwaZmdmf8xaEmZll
# OSDMzCzLAWFmZlkOCDMzy3pHXwBs+PDh0d7eXnUZZmbvKFOnTv1dRLT1N947OiDa29vp6uqqugwz
# s3cUSX1dNeBt3sVkZmZZDggzM8tqWECka97fka47/7ik01L7xum6+U+nvxuldkn6frre/qM916o3
# M7NqNHILYgnwlYjYHvgIcIqk7YGzgEkRMYrimvlnpfEPoLic8yiKa/Zf1MDazMysHw0LiIhYEBHT
# UverwBMUlyUeDVyZRrsSOCR1jwauisJ9wDAVt5Q0M7MKNOUYhKR2YCeKO4SNiIgFadDzLLvu/GYs
# f/37eSx/nXszM2uihgeEpPUproB5erqW/9uiuFLgCl0tUNJYSV2Surq7uwewUjMzK2toQEhaiyIc
# ro6IG1Pzwp5dR+nvotQ+n+KuVz02Z/mbvQAQEeMjojMiOtva+v2dh5mZraRGnsUkimvfPxERF5QG
# 3cSym8MfB/ys1H5sOpvpI8DLpV1RZmbWZI38JfXuFDeSf0zSw6ntHOA84HpJJ1Lc4/eINOxm4EDg
# GYp76R7fwNrMbDAatxrdB2ncyw1/ioYFRETcTXFD9Zz9MuMHcEqj6jEzsxXjX1KbmVmWA8LMzLIc
# EGZmluWAMDOzLAeEmZllOSDMzCzLAWFmZlkOCDMzy3JAmJlZlgPCzMyyHBBmZpblgDAzsywHhJmZ
# ZTkgzMwsywFhZmZZDggzM8tyQJiZWZYDwszMshoWEJIul7RI0vRS23WSHk6P2T33qpbULukPpWEX
# N6ouMzOrT8PuSQ1cAfwAuKqnISKO7OmWdD5Qvuv2zIjoaGA9Zma2AhoWEBExWVJ7bpgkAUcA+zbq
# +c3MbNVUdQxiT2BhRDxdatta0kOS7pK0Z28TShorqUtSV3d3d+MrNTMbpKoKiKOBCaX+BcCWEbET
# cAZwjaQNchNGxPiI6IyIzra2tiaUamY2ODU9ICStCXwKuK6nLSLeiIjFqXsqMBPYrtm1mZnZMlVs
# QXwUeDIi5vU0SGqTNCR1bwOMAp6toDYzM0saeZrrBOBe4H2S5kk6MQ06iuV3LwHsBTyaTnv9CXBy
# RLzQqNrMzKx/jTyL6ehe2sdk2m4AbmhULWZmtuL8S2ozM8tyQJiZWZYDwszMshwQZmaW5YAwM7Ms
# B4SZmWU5IMzMLMsBYWZmWQ4IMzPLckCYmVmWA8LMzLIcEGZmluWAMDOzLAeEmZllOSDMzCzLAWFm
# ZlkOCDMzy2rkLUcvl7RI0vRS2zhJ8yU9nB4HloadLekZSU9J+kSj6jIzs/o0cgviCmD/TPuFEdGR
# HjcDSNqe4l7VO6Rp/kPSkAbWZmZm/WhYQETEZOCFOkcfDVwbEW9ExCzgGWDXRtVmZmb9q+IYxKmS
# Hk27oDZKbZsBc0vjzEttf0bSWEldkrq6u7sbXauZ2aDV7IC4CNgW6AAWAOev6AwiYnxEdEZEZ1tb
# 20DXZ2ZmSVMDIiIWRsTSiHgLuIRlu5HmA1uURt08tZmZWUWaGhCSRpZ6DwV6znC6CThK0jqStgZG
# AQ80szYzM1vemo2asaQJwN7AcEnzgG8Ae0vqAAKYDXwBICIel3Q9MANYApwSEUsbVZuZmfWvYQER
# EUdnmi/rY/xzgXMbVY+Zma0Y/5LazMyyHBBmZpblgDAzsywHhJmZZTkgzMwsywFhZmZZDggzM8ty
# QJiZWZYDwszMshwQZmaW5YAwM7MsB4SZmWU5IMzMLMsBYWZmWQ4IMzPLckCYmVmWA8LMzLIaFhCS
# Lpe0SNL0Utt3JD0p6VFJEyUNS+3tkv4g6eH0uLhRdZmZWX0auQVxBbB/TdvtwI4R8QHgt8DZpWEz
# I6IjPU5uYF1mZlaHhgVEREwGXqhpuy0ilqTe+4DNG/X8Zma2aqo8BnEC8KtS/9aSHpJ0l6Q9e5tI
# 0lhJXZK6uru7G1+lmdkgVUlASPoasAS4OjUtALaMiJ2AM4BrJG2QmzYixkdEZ0R0trW1NadgM7NB
# qOkBIWkMcBDw2YgIgIh4IyIWp+6pwExgu2bXZmZmyzQ1ICTtD/w9cHBEvF5qb5M0JHVvA4wCnm1m
# bWZmtrw1GzVjSROAvYHhkuYB36A4a2kd4HZJAPelM5b2Ar4p6U3gLeDkiHghO2MzM2uKhgVERByd
# ab6sl3FvAG5oVC1mZrbi/EtqMzPLckCYmVmWA8LMzLIcEGZmluWAMDOzrLoCQtLu9bSZmdnqo94t
# iH+vs83MzFYTff4OQtJfA7sBbZLOKA3aABjSyMLMzKxa/f1Qbm1g/TTe0FL7K8BhjSrKzMyq12dA
# RMRdwF2SroiIOU2qyczMWkC9l9pYR9J4oL08TUTs24iizMysevUGxI+Bi4FLgaWNK8fMzFpFvQGx
# JCIuamglZmbWUuo9zfXnkr4oaaSkjXseDa3MzMwqVe8WxHHp75mltgC2GdhyzMysVdQVEBGxdaML
# MTOz1lJXQEg6NtceEVcNbDlmZtYq6t3FtEupe11gP2Aa4IAwM1tN1buL6UvlfknDgGv7m07S5cBB
# wKKI2DG1bQxcR/GbitnAERHxooqbVH8POBB4HRgTEdPqXhIzMxtQK3u579eAeo5LXAHsX9N2FjAp
# IkYBk1I/wAHAqPQYC/i0WjOzCtV7DOLnFGctQXGRvr8Cru9vuoiYLKm9pnk0sHfqvhK4E/iH1H5V
# RARwn6RhkkZGxIJ6ajQzs4FV7zGI75a6lwBzImLeSj7niNKH/vPAiNS9GTC3NN681LZcQEgaS7GF
# wZZbbrmSJZiZWX/q2sWULtr3JMUVXTcC/jQQT562FqLfEZefZnxEdEZEZ1tb20CUYWZmGfXeUe4I
# 4AHgcOAI4H5JK3u574WSRqb5jgQWpfb5wBal8TZPbWZmVoF6D1J/DdglIo6LiGOBXYF/WsnnvIll
# v8w+DvhZqf1YFT4CvOzjD2Zm1an3GMQaEbGo1L+YOsJF0gSKA9LDJc0DvgGcB1wv6URgDsUWCcDN
# FKe4PkNxmuvxddZmZmYNUG9A3CLpVmBC6j+S4gO9TxFxdC+D9suMG8ApddZjZmYN1t89qd9LcdbR
# mZI+BeyRBt0LXN3o4szMrDr9bUH8G3A2QETcCNwIIOn9adgnG1qdmZlVpr/jCCMi4rHaxtTW3pCK
# zMysJfQXEMP6GLbeQBZiZmatpb+A6JJ0Um2jpM8DUxtTkpmZtYL+jkGcDkyU9FmWBUInsDZwaCML
# MzOzavUZEBGxENhN0j7Ajqn5lxHx3w2vzMzMKlXv/SDuAO5ocC1mZtZCVvZ+EGZmtppzQJiZWZYD
# wszMshwQZmaW5YAwM7MsB4SZmWU5IMzMLMsBYWZmWQ4IMzPLqveOcgNG0vuA60pN2wBfp7hy7ElA
# d2o/JyL6vWudmZk1RtMDIiKeAjoAJA0B5gMTKe5BfWFEfLfZNZkNKuM2rLqCgTHu5aorWO1VvYtp
# P2BmRMypuA4zM6tRdUAcBUwo9Z8q6VFJl0vaKDeBpLGSuiR1dXd350YxM7MBUFlASFobOBj4cWq6
# CNiWYvfTAuD83HQRMT4iOiOis62trSm1mpkNRlVuQRwATEv3nCAiFkbE0oh4C7gE2LXC2szMBr0q
# A+JoSruXJI0sDTsUmN70iszM7G1NP4sJQNK7gY8BXyg1f1tSBxDA7JphZmbWZJUERES8BmxS03ZM
# FbWYmVle1WcxmZlZi3JAmJlZlgPCzMyyHBBmZpblgDAzsywHhJmZZTkgzMwsywFhZmZZDggzM8ty
# QJiZWZYDwszMshwQZmaW5YAwM7MsB4SZmWU5IMzMLMsBYWZmWQ4IMzPLquSOcgCSZgOvAkuBJRHR
# KWlj4DqgneK2o0dExItV1WhmNphVvQWxT0R0RERn6j8LmBQRo4BJqd/MzCpQdUDUGg1cmbqvBA6p
# sBYzs0GtyoAI4DZJUyWNTW0jImJB6n4eGFE7kaSxkrokdXV3dzerVjOzQaeyYxDAHhExX9J7gNsl
# PVkeGBEhKWoniojxwHiAzs7OPxtuZmYDo7ItiIiYn/4uAiYCuwILJY0ESH8XVVWfmdlgV0lASHq3
# pKE93cDHgenATcBxabTjgJ9VUZ+ZmVW3i2kEMFFSTw3XRMQtkh4Erpd0IjAHOKKi+szMBr1KAiIi
# ngU+mGlfDOzX/IrMzKxWq53mamZmLcIBYWZmWQ4IMzPLckCYmVmWA8LMzLIcEGZmluWAMDOzLAeE
# mZllOSDMzCzLAWFmZlkOCDMzy3JAmJlZlgPCzMyyHBBmZpblgDAzsywHhJmZZTkgzMwsq+kBIWkL
# SXdImiHpcUmnpfZxkuZLejg9Dmx2bWZmtkwVtxxdAnwlIqZJGgpMlXR7GnZhRHy3gprMzKxG0wMi
# IhYAC1L3q5KeADZrdh1mZta3So9BSGoHdgLuT02nSnpU0uWSNqqsMDMzqy4gJK0P3ACcHhGvABcB
# 2wIdFFsY5/cy3VhJXZK6uru7m1avmdlgU0lASFqLIhyujogbASJiYUQsjYi3gEuAXXPTRsT4iOiM
# iM62trbmFW1mNshUcRaTgMuAJyLiglL7yNJohwLTm12bmZktU8VZTLsDxwCPSXo4tZ0DHC2pAwhg
# NvCFCmozM7OkirOY7gaUGXRzs2sxM7Pe+ZfUZmaW5YAwM7MsB4SZmWU5IMzMLMsBYWZmWQ4IMzPL
# quJ3EK1j3IZVVzAwxr1cdQVmthryFoSZmWU5IMzMLMsBYWZmWQ4IMzPLckCYmVmWA8LMzLIcEGZm
# luWAMDOzLAeEmZllOSDMzCzLAWFmZlktdy0mSfsD3wOGAJdGxHkVl2Srm9XlGlzg63BZQ7VUQEga
# AvwQ+BgwD3hQ0k0RMaPaylZD/pA0s3602i6mXYFnIuLZiPgTcC0wuuKazMwGJUVE1TW8TdJhwP4R
# 8fnUfwzw4Yg4tTTOWGBs6n0f8FTTC10xw4HfVV1ERQbzssPgXv7BvOzQ+su/VUS09TdSS+1iqkdE
# jAfGV11HvSR1RURn1XVUYTAvOwzu5R/Myw6rz/K32i6m+cAWpf7NU5uZmTVZqwXEg8AoSVtLWhs4
# Crip4prMzAalltrFFBFLJJ0K3EpxmuvlEfF4xWWtqnfM7rAGGMzLDoN7+QfzssNqsvwtdZDazMxa
# R6vtYjIzsxbhgDAzsywHRJNIuqfqGmpJGifpq5K+KemjfYx3iKTt+xh+sqRjU/edkuo+vU/SMElf
# LPVvKukn9U7fTJJmSxq+EtPtLWm3PoYfLOmsVatuYNSujxWYLrveW2nZGknSzZKGrcD47ZKmN7Km
# geCAaJKI6PUDomoR8fWI+HUfoxwCZANC0poRcXFEXLWSTz8MePsDKSKei4jDVnJerWpvILv+0+t3
# Uwtdc2y59VGPdImcrBZbtoaJiAMj4qWq6xhoDohVIOmnkqZKelzSWElbSXpa0nBJa0iaIunjadzf
# p78jJU2W9LCk6ZL2bHLNX5P0W0l3U/wSHUlXpF+xI+k8STMkPSrpu+mb78HAd1LN26Zvi/8mqQs4
# rWdLpPQ0x5SWb9c03+XGScPagfOAbdP43yl/s5K0rqQfSXpM0kOS9kntYyTdKOmW9Hp/uwGv0+ck
# PZDq+s/aD8HehkvaX9I0SY9ImpSW8WTg79K4e6bX+2JJ9wPfTsvzgzT9CEkT0/SP9LXl0SDl9fGg
# pF+UlvkHksak7tmSviVpGnB4GiW33svLdoWk70u6R9KzPe+5NOzM9HyPSvrnZi1svVJ9X07dF0r6
# 79S9r6Sre7Yu0/v3CUmXpM+F2yStl8bduWe9AqdUuDh1c0CsmhMiYmegE/gy8HvgW8BFwFeAGRFx
# W800nwFujYgO4IPAw80qVtLOFL8t6QAOBHapGb4JcCiwQ0R8APi/EXEPxW9RzoyIjoiYmUZfOyI6
# I+L8zFO9Ky3fF4HL+ynrLGBmmveZNcNOASIi3g8cDVwpad00rAM4Eng/cKSkLRggkv4qzXv3tBxL
# gc/2N1xSG3AJ8OmI+CBweETMBi4GLkzLOCXNZnNgt4g4o+bpvw/clab/ENDs07zfXh9A7fqotTgi
# PhQR16b+etb7SGAP4CCKMCJ9iRpFcS22DmBnSXut2mIMuClAz5e5TmB9SWultsk1444CfhgROwAv
# AZ9O7T8CvpTW7TtCS/0O4h3oy5IOTd1bAKMi4lJJh1N8a+zITPMgcHl6c/00IpoWEBRv5okR8TqA
# pNofIb4M/BG4LH1z/AW9u66PYRMAImKypA20Avtma+wB/Hua15OS5gDbpWGTIuJlAEkzgK2AuSv5
# PLX2A3amuJowwHrAojqGfwSYHBGzUs0v9PEcP46IpZn2fYFj0/RLKdZJq6p9D9Sz3n8aEW8BMySN
# SG0fT4+HUv/6FB+ytR+8VZpKEVwbAG8A0yiCYk+KL4dnl8adVfq/ngq0p9diWET0LNP/Bw5oSuWr
# wAGxkiTtDXwU+OuIeF3SncC6kt5F8e0Qijf6q+Xp0j/PXsD/Aa6QdMEq7L8fUOmHirtSfAAeBpxK
# 8YGV81pfs8r0L2H5LdZ1WTVvlLqXMrDvZQFXRsTZyzWm3St9DP/kCjxHX69fq+hvndUuQ2691yqv
# N5X+/mtE/OcKV9gkEfGmpFnAGOAe4FFgH+C9wBM1o9e+N9drRo2N4F1MK29D4MUUDn9J8e0Ril1M
# VwNfp9jdsBxJWwELI+IS4FKK3QjNMhk4RNJ6koYCy32gSVof2DAibgb+jmIXGBQhN3QFnufINL89
# gJfTN/3ZpGWV9CFg6zrmPYW0a0fSdsCWNOfqvZOAwyS9Jz33xmm99Tf8PmAvSVv3tKfxV+T1mwT8
# bZp+iKRm37ijXOscYHtJ66RvwPv1M21uvdfjVuCE9P5D0mY9r22LmQJ8leL/aArFXoKHoo5fG6cD
# 2C+l1wZKuyxbmbcgVt4twMmSnqD40LoP+BuK/fq7R8RSSZ+WdHxE/Kg03d7AmZLepDhmcWyzCo6I
# aZKuAx6h2CXyYM0oQ4Gfpf38Anr2j18LXJIO0tVzhtEfJT0ErAWckNpuAI6V9DhwP/DbVNNiSb9R
# cWD6VxQ3jOrxH8BFkh6j+DY7JiLeSLt1GiYiZkj6R+A2SWsAb1I6qNjb8Ii4T8Xl6G9M7Ysobn71
# c+AnkkYDX+rn6U8Dxks6keLb598C9w7wIvYqsz6uB6YDs1i2C6g3ufVez3Pelo7r3JvW7e+Bz7H8
# br1WMAX4GnBvRLwm6Y+prV7HU+xeDqD22GRL8qU2zMwsy7uYzMwsywFhZmZZDggzM8tyQJiZWZYD
# wszMshwQZmaW5YAwM7Os/wXDI0YirlU9fwAAAABJRU5ErkJggg==
# " class="unconfined">

# ### Solution

# In[71]:


url = "https://en.wikipedia.org/wiki/Wind_turbine"
words = ["turbine", "wind", "axis", "distribution", "electric"]


import collections
import requests
import matplotlib.pylab as plt


data = requests.get(url).text

cnt = collections.Counter()
for word in data.split(" "):
    cnt[word] += 1

scores = []
for word in words:
#     print(cnt[word])
    scores.append(cnt[word])
    
plt.bar(words, scores)
plt.ylabel("Count")
plt.title("Word occurence")
plt.show()

