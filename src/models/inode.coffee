mongoose = require 'mongoose'

# Inode is an "information node" — a unit that stores the data

Inode = new mongoose.Schema
  type: String
  slug:
    type: String
    lowercase: true
    trim: true
    required: true
  created_at: Date
  updated_at: Date
  inodes: [Inode]


module.exports = mongoose.model 'Inode', Inode