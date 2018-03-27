data Tree = Nil | Node (Integer, Tree, Tree)
  deriving Show

t = Node(5, Node(3, Nil, Node(4, Nil, Nil)), Nil)
bst = Node(10, 
        Node(8, 
          Node(4, Nil, Node(6, Nil, Nil)), 
          Node(9, Nil, Nil)), 
        Node(15, Nil, Node(18, Nil, Nil)))

iit Nil = []
iit (Node(v,l,r)) = (iit l) ++ [v] ++ (iit r)

found needle Nil = False
found needle (Node(v, l, r))
 | needle == v = True
 | needle < v = found needle l
 | otherwise = found needle r

done needle Nil = True
done needle (Node(v, l, r)) = False

search needle Nil = []
search needle (Node(v, l, r))
 | needle == v = [v]
 | needle < v = search needle l
 | otherwise = search needle r



search2 needle haystack done found
 | done needle haystack = []
 | found