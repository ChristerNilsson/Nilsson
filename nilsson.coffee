nilsson_version = "1.0"

#ass = (msg,a,b) -> chai.assert.deepEqual(a,b,msg)
assert = (a,b) -> 
  print "Assert failed: #{a} != #{b}" if !_.isEqual(a,b)

fixColor = (args) ->
  n = args.length
  a = 1
  [r,g,b] = [args[0],args[0],args[0]] if n == 1
  [r,g,b,a] = [args[0],args[0],args[0],args[1]] if n == 2
  [r,g,b] = args if n == 3
  [r,g,b,a] = args if n == 4
  return color 255 * r, 255 * g, 255 * b, 255 * a

fc = -> if arguments.length == 0 then noFill() else fill fixColor arguments
sc = -> if arguments.length == 0 then noStroke() else stroke fixColor arguments
bg = -> background fixColor arguments
sw = (n) -> strokeWeight n
circle = (x,y,r) -> ellipse x,y,2*r,2*r
rd = (degrees) -> rotate radians degrees
print = console.log
range = _.range # from underscore.coffee

getParameters = (h = window.location.href) -> _.object(f.split '=' for f in h.split('?')[1].split('&'))
assert getParameters('http:\\christernilsson.github.io\Shortcut\www?a=0&b=1'), {'a':'0', 'b':'1'}

compare = (a,b) ->
	if typeof a != "object" then (if a > b then return -1 else (if a < b then return 1 else return 0))
	for i in range Math.min a.length,b.length
		c = compare a[i],b[i]
		if c != 0 then return c
	0
assert compare(12,13), 1
assert compare(12,12), 0
assert compare(13,12), -1
assert compare([1,11],[1,2]), -1
assert compare([1,11],[1,11]), 0
assert compare([1,2],[1,11]), 1
assert compare([1,'11'],[1,'2']), 1
assert compare([1,'11'],[1,'11']), 0
assert compare([1,'2'],[1,'11']), -1

bsort = (list,cmp=compare) ->
  for i in range list.length
    for j in range list.length-1
      [list[j], list[j+1]] = [list[j+1], list[j]] if cmp(list[j], list[j+1]) < 0
  list
assert bsort([1,8,2],compare), [1,2,8]
assert bsort([1,8,2],compare), [1,2,8]
assert bsort([[1],[8],[2]],compare), [[1],[2],[8]]
assert bsort([[2,1],[2,8],[2,2]],compare), [[2,1],[2,2],[2,8]]
assert bsort([[1,8], [1,7], [1,9]],compare), [[1,7], [1,8], [1,9]]
assert bsort([3,2,4,1], compare), [1,2,3,4]

