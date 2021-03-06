require_relative 'node'
require 'benchmark'

class BinarySearchTree

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    if node.rating < root.rating && root.left == nil
      root.left = node
    elsif node.rating < root.rating && root.left != nil
      root = root.left
      insert(root, node)
    elsif node.rating > root.rating && root.right == nil
      root.right = node
    elsif node.rating > root.rating && root.right != nil
      root = root.right
      insert(root, node)
    end
  end

  # Recursive Depth First Search
  def find(root, rating)
    if root == nil
      return nil
    end
    if rating == root.rating
      return root
    else
      if rating < root.rating
        find(root.left, rating)
      elsif rating > root.rating
        find(root.right, rating)
      else
        root = root.parent
        find(root, rating)
      end
    end
  end

  def delete(root, data)
    return nil if data == nil
    movie = find(root, data)
    movie.title = nil
    movie.rating = nil
  end

  # Recursive Breadth First Search
  def printf
    queue = []
    output = [@root]
    if @root.left != nil
      queue.push(@root.left)
    end
    if @root.right != nil
      queue.push(@root.right)
    end
    queue.each do |q|
      output.push(q)
      if q.left != nil
        queue.push(q.left)
      end
      if q.right != nil
        queue.push(q.right)
      end
    end
    output.each do |o|
      puts "#{o.title}: #{o.rating}"
    end
  end
end

jumanji = Node.new("Jumanji: Welcome to the Jungle", 76)
mazerunner = Node.new("Maze Runner: The Death Cure", 43)
winchester = Node.new("Winchester", 10)
showman = Node.new("The Greatest Showman", 55)
post = Node.new("The Post", 88)
hostiles = Node.new("Hostiles", 72)
strong = Node.new("12 Strong", 54)
thieves = Node.new("Den of Thieves", 39)
water = Node.new("The Shape of Water", 92)
paddington = Node.new("Paddington 2", 100)

movies = BinarySearchTree.new(jumanji)

movies.insert(jumanji, mazerunner)
movies.insert(jumanji, winchester)
movies.insert(jumanji, showman)
movies.insert(jumanji, post)
movies.insert(jumanji, hostiles)
movies.insert(jumanji, strong)
movies.insert(jumanji, thieves)
movies.insert(jumanji, water)
movies.insert(jumanji, paddington)
