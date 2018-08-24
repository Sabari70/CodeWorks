with open('demofile.txt',"r") as f:
    hash = {}
    for line in f:
         key,value = line.strip().split('.',1)
         hash[key] = int(value)
         value_sort = sorted(hash.value())
         f.write(value_sort)
         
