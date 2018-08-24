#Reading contents from Text file and store it in Hashmap then sort in Ascending order with Hash keys

from operator import itemgetter 

hash = {}
with open('demofile.txt') as f:
    for line in f:
        key, value = line.strip().split('|', 1)
        hash[key] = int(value)

#for key, value in sorted(hash.items(), key=itemgetter(1)):
   # print '{0}.{1}'.format(key, value)
with open('example.txt', 'w') as f:
    for key, value in sorted(hash.items(), key=itemgetter(1)):
        f.write('{0}|{1}\n'.format(key, value))
