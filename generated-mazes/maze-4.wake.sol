pragma solidity ^0.8.19;
/// automatically generated by Daedaluzz
contract Maze {
  event AssertionFailed(string message);
  uint64 private x;
  uint64 private y;
  mapping (uint64 => bool) public found;
  function moveNorth(uint64 p0, uint64 p1, uint64 p2, uint64 p3, uint64 p4, uint64 p5, uint64 p6, uint64 p7) payable external returns (int64) {
    uint64 ny = y + 1;
    require(ny < 7);
    int64 r = step(x, ny, p0, p1, p2, p3, p4, p5, p6, p7);
    if (0 <= r) { y = ny; }
    return r;
  }
  function moveSouth(uint64 p0, uint64 p1, uint64 p2, uint64 p3, uint64 p4, uint64 p5, uint64 p6, uint64 p7) payable external returns (int64) {
    require(0 < y);
    uint64 ny = y - 1;
    int64 r = step(x, ny, p0, p1, p2, p3, p4, p5, p6, p7);
    if (0 <= r) { y = ny; }
    return r;
  }
  function moveEast(uint64 p0, uint64 p1, uint64 p2, uint64 p3, uint64 p4, uint64 p5, uint64 p6, uint64 p7) payable external returns (int64) {
    uint64 nx = x + 1;
    require(nx < 7);
    int64 r = step(nx, y, p0, p1, p2, p3, p4, p5, p6, p7);
    if (0 <= r) { x = nx; }
    return r;
  }
  function moveWest(uint64 p0, uint64 p1, uint64 p2, uint64 p3, uint64 p4, uint64 p5, uint64 p6, uint64 p7) payable external returns (int64) {
    require(0 < x);
    uint64 nx = x - 1;
    int64 r = step(nx, y, p0, p1, p2, p3, p4, p5, p6, p7);
    if (0 <= r) { x = nx; }
    return r;
  }
  function step(uint64 x, uint64 y, uint64 p0, uint64 p1, uint64 p2, uint64 p3, uint64 p4, uint64 p5, uint64 p6, uint64 p7) internal returns (int64) {
    unchecked {
      if (x == 0 && y == 0) {
        // start
        return 0;
      }
      if (x == 0 && y == 1) {
        if (p4 >= p7) {
          if (p5 < uint64(uint64(64) * p7)) {
            if (p1 != uint64(20)) {
              if (p2 <= uint64(uint64(31) * p2)) {
                if (p0 > p7) {
                  if (p0 <= uint64(24)) {
                    if (p6 < uint64(p7 + p0)) {
                      if (p4 > uint64(60)) {
                        if (p5 >= uint64(p2 + p6)) {
                          if (p1 > p4) {
                            if (p5 == uint64(64)) {
                              if (p5 <= uint64(32)) {
                                if (p4 >= uint64(p6 + p7)) {
                                  if (p1 < uint64(uint64(4) + p4)) {
                                    if (p7 > uint64(uint64(1) * p1)) {
                                      found[1] = true; return -1;  // bug
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 1;
      }
      if (x == 0 && y == 2) {
        if (p0 == uint64(uint64(28) + p4)) {
          if (p1 <= uint64(p7 + p5)) {
            if (p1 == uint64(p4 + p3)) {
              if (p6 != p6) {
                if (p1 == uint64(29)) {
                  if (p2 < uint64(p5 + p1)) {
                    found[2] = true; return -1;  // bug
                  }
                }
              }
            }
          }
        }
        return 2;
      }
      if (x == 0 && y == 3) {
        if (p1 > uint64(16)) {
          if (p5 < uint64(uint64(28) * p0)) {
            if (p2 <= uint64(uint64(33) + p0)) {
              if (p1 > uint64(51)) {
                if (p0 <= uint64(p2 + p3)) {
                  if (p4 > uint64(p2 * p0)) {
                    if (p2 != uint64(p1 * p4)) {
                      if (p4 <= uint64(p4 + p2)) {
                        if (p4 <= uint64(uint64(61) * p6)) {
                          if (p3 == p7) {
                            if (p2 == uint64(55)) {
                              if (p5 > uint64(8)) {
                                if (p6 <= uint64(p7 * p3)) {
                                  if (p2 < uint64(p2 + p5)) {
                                    if (p2 == uint64(p7 + p1)) {
                                      found[3] = true; return -1;  // bug
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 3;
      }
      if (x == 0 && y == 4) {
        require(false);  // wall
        return 4;
      }
      if (x == 0 && y == 5) {
        if (p4 <= uint64(p5 * p7)) {
          if (p0 < uint64(uint64(9) * p3)) {
            found[5] = true; return -1;  // bug
          }
        }
        return 5;
      }
      if (x == 0 && y == 6) {
        if (p6 >= p2) {
          if (p1 == uint64(uint64(22) + p2)) {
            found[6] = true; return -1;  // bug
          }
        }
        return 6;
      }
      if (x == 1 && y == 0) {
        require(false);  // wall
        return 7;
      }
      if (x == 1 && y == 1) {
        if (p2 < uint64(uint64(0) * p4)) {
          if (p5 < uint64(p3 + p7)) {
            found[8] = true; return -1;  // bug
          }
        }
        return 8;
      }
      if (x == 1 && y == 2) {
        require(false);  // wall
        return 9;
      }
      if (x == 1 && y == 3) {
        if (p6 == uint64(p0 + p1)) {
          if (p0 == uint64(uint64(33) * p0)) {
            found[10] = true; return -1;  // bug
          }
        }
        return 10;
      }
      if (x == 1 && y == 4) {
        if (p1 <= p4) {
          if (p0 <= uint64(uint64(56) + p4)) {
            if (p3 != uint64(uint64(1) + p1)) {
              found[11] = true; return -1;  // bug
            }
          }
        }
        return 11;
      }
      if (x == 1 && y == 5) {
        if (p6 < uint64(uint64(62) * p3)) {
          if (p3 > uint64(29)) {
            if (p6 >= uint64(uint64(54) + p7)) {
              if (p7 > uint64(uint64(10) + p0)) {
                if (p7 >= uint64(p3 * p3)) {
                  if (p2 <= uint64(p0 * p4)) {
                    if (p1 < uint64(p4 + p2)) {
                      if (p0 < p6) {
                        if (p2 > uint64(uint64(23) * p1)) {
                          if (p4 > uint64(uint64(64) * p2)) {
                            if (p3 < uint64(uint64(40) * p0)) {
                              if (p4 >= uint64(36)) {
                                if (p6 < uint64(uint64(54) + p6)) {
                                  if (p7 > uint64(p1 + p5)) {
                                    if (p1 > p1) {
                                      if (p1 <= uint64(uint64(64) * p1)) {
                                        found[12] = true; return -1;  // bug
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 12;
      }
      if (x == 1 && y == 6) {
        if (p2 > uint64(uint64(17) * p6)) {
          if (p2 > uint64(p1 * p0)) {
            if (p4 >= uint64(p2 + p3)) {
              if (p4 == uint64(43)) {
                if (p3 > uint64(22)) {
                  if (p7 > p4) {
                    if (p4 < uint64(p5 * p4)) {
                      if (p0 == uint64(p5 * p5)) {
                        if (p6 < uint64(p1 * p3)) {
                          if (p3 >= uint64(uint64(52) + p6)) {
                            if (p4 <= uint64(p4 * p0)) {
                              if (p2 != p1) {
                                if (p0 == p4) {
                                  if (p3 != uint64(p2 * p3)) {
                                    found[13] = true; return -1;  // bug
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 13;
      }
      if (x == 2 && y == 0) {
        require(false);  // wall
        return 14;
      }
      if (x == 2 && y == 1) {
        require(false);  // wall
        return 15;
      }
      if (x == 2 && y == 2) {
        if (p5 >= uint64(10)) {
          if (p2 >= uint64(p6 * p1)) {
            if (p5 == p4) {
              if (p3 >= uint64(uint64(25) * p6)) {
                if (p2 != uint64(uint64(11) + p7)) {
                  if (p3 == uint64(uint64(5) * p6)) {
                    if (p5 != uint64(p1 * p3)) {
                      if (p0 == uint64(31)) {
                        if (p7 >= p4) {
                          if (p2 >= uint64(p1 * p3)) {
                            if (p6 != uint64(p4 + p3)) {
                              if (p7 > uint64(p3 * p0)) {
                                if (p1 < uint64(p2 + p2)) {
                                  if (p6 <= uint64(uint64(5) + p3)) {
                                    found[16] = true; return -1;  // bug
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 16;
      }
      if (x == 2 && y == 3) {
        if (p6 == uint64(uint64(63) * p0)) {
          if (p6 >= p7) {
            found[17] = true; return -1;  // bug
          }
        }
        return 17;
      }
      if (x == 2 && y == 4) {
        if (p7 >= uint64(p7 + p1)) {
          if (p2 == uint64(uint64(54) * p4)) {
            if (p0 >= uint64(p1 * p6)) {
              if (p4 <= p6) {
                if (p3 <= uint64(39)) {
                  if (p1 < uint64(47)) {
                    if (p2 <= uint64(p3 * p1)) {
                      if (p0 <= uint64(52)) {
                        if (p0 == uint64(uint64(26) + p2)) {
                          if (p6 <= p7) {
                            if (p5 == uint64(p6 * p6)) {
                              if (p4 <= uint64(59)) {
                                if (p5 == uint64(uint64(34) * p5)) {
                                  if (p0 > uint64(p4 + p7)) {
                                    if (p0 < uint64(p4 + p0)) {
                                      if (p1 < uint64(p0 + p5)) {
                                        found[18] = true; return -1;  // bug
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 18;
      }
      if (x == 2 && y == 5) {
        if (p1 < p7) {
          if (p0 < uint64(uint64(6) * p2)) {
            if (p2 == uint64(p2 + p4)) {
              if (p5 < uint64(13)) {
                if (p2 == p3) {
                  if (p2 > uint64(uint64(34) + p3)) {
                    if (p4 > uint64(uint64(45) + p2)) {
                      if (p1 <= p6) {
                        if (p1 > p1) {
                          if (p0 >= p6) {
                            if (p3 != uint64(51)) {
                              if (p0 > p2) {
                                if (p6 < uint64(uint64(48) + p6)) {
                                  if (p6 == uint64(p5 + p4)) {
                                    if (p2 >= uint64(uint64(6) * p0)) {
                                      found[19] = true; return -1;  // bug
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 19;
      }
      if (x == 2 && y == 6) {
        require(false);  // wall
        return 20;
      }
      if (x == 3 && y == 0) {
        if (p3 >= uint64(uint64(15) * p1)) {
          if (p7 == uint64(64)) {
            if (p7 > uint64(uint64(54) + p5)) {
              if (p4 <= p5) {
                if (p2 == uint64(uint64(16) * p0)) {
                  if (p4 > uint64(13)) {
                    if (p2 != p6) {
                      if (p1 < uint64(uint64(16) + p1)) {
                        if (p4 > uint64(uint64(23) + p1)) {
                          if (p6 <= uint64(p2 + p4)) {
                            if (p5 > uint64(p7 * p1)) {
                              if (p5 <= p6) {
                                if (p1 >= uint64(uint64(7) * p7)) {
                                  if (p7 <= uint64(uint64(58) * p4)) {
                                    if (p4 != uint64(p7 * p3)) {
                                      found[21] = true; return -1;  // bug
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 21;
      }
      if (x == 3 && y == 1) {
        if (p3 < uint64(40)) {
          if (p1 <= uint64(uint64(20) + p3)) {
            if (p5 < uint64(43)) {
              if (p2 <= uint64(p4 * p2)) {
                found[22] = true; return -1;  // bug
              }
            }
          }
        }
        return 22;
      }
      if (x == 3 && y == 2) {
        if (p1 <= uint64(uint64(1) * p6)) {
          if (p7 == uint64(p3 * p2)) {
            if (p3 >= uint64(uint64(1) * p1)) {
              if (p1 == uint64(p1 + p0)) {
                if (p0 == uint64(uint64(8) + p4)) {
                  if (p2 != uint64(p6 + p3)) {
                    found[23] = true; return -1;  // bug
                  }
                }
              }
            }
          }
        }
        return 23;
      }
      if (x == 3 && y == 3) {
        if (p3 != uint64(p5 * p7)) {
          if (p1 < uint64(p6 + p1)) {
            if (p3 < uint64(p3 + p5)) {
              if (p5 > uint64(p2 + p2)) {
                if (p7 >= uint64(p6 * p0)) {
                  if (p3 < uint64(p7 + p0)) {
                    if (p2 != uint64(p3 * p7)) {
                      if (p4 > uint64(p3 * p5)) {
                        if (p3 >= uint64(p4 * p6)) {
                          if (p5 < uint64(p2 + p7)) {
                            if (p4 != uint64(38)) {
                              if (p6 <= uint64(60)) {
                                found[24] = true; return -1;  // bug
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 24;
      }
      if (x == 3 && y == 4) {
        if (p7 != uint64(uint64(6) * p2)) {
          if (p1 >= uint64(p3 * p0)) {
            if (p1 > uint64(uint64(53) + p3)) {
              if (p2 < uint64(22)) {
                if (p4 == uint64(uint64(33) * p0)) {
                  if (p1 > uint64(40)) {
                    if (p5 > uint64(p3 * p1)) {
                      if (p1 >= uint64(uint64(49) + p5)) {
                        if (p6 == uint64(uint64(58) + p0)) {
                          if (p3 > uint64(p7 + p4)) {
                            if (p2 != uint64(p0 + p4)) {
                              if (p1 < p4) {
                                if (p7 <= uint64(uint64(58) * p6)) {
                                  found[25] = true; return -1;  // bug
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 25;
      }
      if (x == 3 && y == 5) {
        if (p7 > uint64(uint64(52) * p1)) {
          if (p3 != p6) {
            if (p4 >= p6) {
              if (p0 < uint64(p4 * p1)) {
                if (p1 < uint64(uint64(64) * p0)) {
                  if (p4 > p4) {
                    if (p7 <= uint64(uint64(18) * p5)) {
                      if (p7 == uint64(uint64(55) * p2)) {
                        if (p1 < uint64(uint64(53) * p0)) {
                          if (p1 != uint64(uint64(59) * p6)) {
                            if (p6 == uint64(p5 * p7)) {
                              found[26] = true; return -1;  // bug
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 26;
      }
      if (x == 3 && y == 6) {
        if (p1 > p7) {
          if (p2 >= uint64(43)) {
            if (p5 == uint64(3)) {
              found[27] = true; return -1;  // bug
            }
          }
        }
        return 27;
      }
      if (x == 4 && y == 0) {
        if (p0 >= uint64(uint64(49) + p2)) {
          if (p0 > uint64(uint64(16) + p6)) {
            if (p3 > uint64(p6 + p1)) {
              if (p7 < uint64(uint64(30) + p1)) {
                if (p7 > p2) {
                  found[28] = true; return -1;  // bug
                }
              }
            }
          }
        }
        return 28;
      }
      if (x == 4 && y == 1) {
        if (p4 > uint64(p6 + p7)) {
          if (p0 == uint64(uint64(51) + p0)) {
            if (p6 == p6) {
              if (p6 != uint64(29)) {
                if (p6 >= uint64(1)) {
                  if (p0 != uint64(p4 + p2)) {
                    if (p1 <= uint64(uint64(1) * p3)) {
                      if (p1 != uint64(uint64(64) * p5)) {
                        if (p6 != uint64(uint64(59) * p0)) {
                          if (p6 < uint64(23)) {
                            if (p3 > p2) {
                              if (p0 <= uint64(uint64(26) + p1)) {
                                if (p6 > uint64(p5 * p6)) {
                                  if (p5 >= uint64(uint64(1) + p3)) {
                                    if (p5 <= uint64(uint64(33) + p0)) {
                                      found[29] = true; return -1;  // bug
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 29;
      }
      if (x == 4 && y == 2) {
        if (p4 >= p4) {
          if (p0 < uint64(p1 * p0)) {
            if (p5 > uint64(uint64(20) + p3)) {
              if (p3 == uint64(p3 + p3)) {
                if (p2 >= uint64(p6 * p2)) {
                  if (p6 >= uint64(p0 + p4)) {
                    if (p0 > uint64(uint64(53) * p6)) {
                      if (p1 > uint64(18)) {
                        if (p4 == uint64(uint64(36) + p7)) {
                          if (p7 < uint64(uint64(62) * p0)) {
                            if (p6 == uint64(p3 + p3)) {
                              if (p0 > p3) {
                                if (p2 < uint64(45)) {
                                  if (p5 != uint64(p5 + p1)) {
                                    found[30] = true; return -1;  // bug
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 30;
      }
      if (x == 4 && y == 3) {
        if (p6 != uint64(p1 + p1)) {
          if (p4 < uint64(45)) {
            if (p5 == uint64(62)) {
              if (p7 == uint64(36)) {
                if (p0 > p6) {
                  if (p4 > uint64(uint64(21) * p6)) {
                    if (p0 != uint64(uint64(59) + p0)) {
                      if (p5 >= uint64(p4 + p1)) {
                        found[31] = true; return -1;  // bug
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 31;
      }
      if (x == 4 && y == 4) {
        if (p1 != p7) {
          if (p2 != uint64(uint64(39) + p5)) {
            if (p4 == uint64(uint64(7) + p2)) {
              if (p3 >= uint64(18)) {
                found[32] = true; return -1;  // bug
              }
            }
          }
        }
        return 32;
      }
      if (x == 4 && y == 5) {
        if (p0 != uint64(p5 * p4)) {
          if (p2 <= p0) {
            if (p7 != uint64(uint64(57) + p4)) {
              if (p7 > p1) {
                if (p2 == uint64(p2 + p0)) {
                  found[33] = true; return -1;  // bug
                }
              }
            }
          }
        }
        return 33;
      }
      if (x == 4 && y == 6) {
        if (p3 == p6) {
          if (p2 >= p4) {
            if (p1 > uint64(p6 + p2)) {
              if (p1 >= uint64(p1 + p5)) {
                if (p5 >= uint64(uint64(38) * p5)) {
                  if (p4 == uint64(uint64(26) + p5)) {
                    if (p1 == uint64(p3 * p0)) {
                      if (p6 >= uint64(64)) {
                        if (p7 != uint64(uint64(26) * p7)) {
                          if (p7 >= uint64(p1 * p4)) {
                            if (p2 < uint64(uint64(9) + p7)) {
                              if (p7 != uint64(39)) {
                                if (p5 != p1) {
                                  if (p0 >= uint64(p3 + p1)) {
                                    found[34] = true; return -1;  // bug
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 34;
      }
      if (x == 5 && y == 0) {
        if (p2 <= uint64(uint64(23) * p3)) {
          if (p6 != uint64(p0 * p7)) {
            if (p1 >= uint64(uint64(56) * p4)) {
              if (p3 == uint64(p5 + p6)) {
                if (p6 <= uint64(uint64(53) * p1)) {
                  if (p2 == uint64(uint64(9) + p3)) {
                    if (p4 > uint64(p0 + p1)) {
                      if (p1 > uint64(p1 * p1)) {
                        if (p2 == uint64(p7 * p6)) {
                          if (p1 == uint64(uint64(34) * p5)) {
                            if (p4 == uint64(p7 + p5)) {
                              if (p7 > uint64(44)) {
                                if (p6 == uint64(p4 * p1)) {
                                  if (p2 < uint64(uint64(50) + p4)) {
                                    found[35] = true; return -1;  // bug
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 35;
      }
      if (x == 5 && y == 1) {
        if (p1 <= uint64(uint64(45) * p3)) {
          if (p1 > uint64(p3 + p1)) {
            found[36] = true; return -1;  // bug
          }
        }
        return 36;
      }
      if (x == 5 && y == 2) {
        if (p6 <= uint64(uint64(45) * p6)) {
          if (p3 != uint64(20)) {
            if (p1 >= p0) {
              if (p3 >= p0) {
                if (p0 == uint64(55)) {
                  if (p3 != uint64(p2 * p7)) {
                    found[37] = true; return -1;  // bug
                  }
                }
              }
            }
          }
        }
        return 37;
      }
      if (x == 5 && y == 3) {
        if (p5 < uint64(p7 + p3)) {
          if (p7 != uint64(uint64(6) * p6)) {
            if (p2 == uint64(uint64(19) * p2)) {
              if (p2 <= p7) {
                if (p1 == uint64(p7 + p1)) {
                  if (p3 != p5) {
                    if (p3 < uint64(uint64(36) * p4)) {
                      if (p0 >= uint64(uint64(15) + p4)) {
                        if (p5 == p1) {
                          found[38] = true; return -1;  // bug
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 38;
      }
      if (x == 5 && y == 4) {
        if (p3 >= uint64(p7 * p2)) {
          if (p2 == uint64(p4 + p4)) {
            if (p5 > uint64(p2 + p7)) {
              if (p7 == p6) {
                if (p1 >= uint64(p4 + p0)) {
                  if (p3 != uint64(p4 + p4)) {
                    if (p6 != p2) {
                      if (p0 >= uint64(23)) {
                        found[39] = true; return -1;  // bug
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 39;
      }
      if (x == 5 && y == 5) {
        if (p2 != uint64(6)) {
          if (p2 < uint64(34)) {
            if (p4 != p4) {
              if (p1 == uint64(p3 * p1)) {
                if (p0 > uint64(9)) {
                  if (p1 < uint64(p5 * p2)) {
                    if (p5 != uint64(p1 * p1)) {
                      found[40] = true; return -1;  // bug
                    }
                  }
                }
              }
            }
          }
        }
        return 40;
      }
      if (x == 5 && y == 6) {
        if (p5 != uint64(p4 + p0)) {
          if (p3 == uint64(p6 * p3)) {
            if (p7 == uint64(p1 * p7)) {
              found[41] = true; return -1;  // bug
            }
          }
        }
        return 41;
      }
      if (x == 6 && y == 0) {
        require(false);  // wall
        return 42;
      }
      if (x == 6 && y == 1) {
        if (p3 <= uint64(uint64(31) + p2)) {
          if (p7 != uint64(uint64(52) * p0)) {
            if (p5 > uint64(p1 * p3)) {
              if (p5 <= uint64(p0 * p0)) {
                if (p1 >= uint64(uint64(34) * p0)) {
                  if (p6 != uint64(p7 * p7)) {
                    found[43] = true; return -1;  // bug
                  }
                }
              }
            }
          }
        }
        return 43;
      }
      if (x == 6 && y == 2) {
        if (p5 == p3) {
          if (p0 == uint64(p4 + p2)) {
            if (p7 >= uint64(uint64(50) * p5)) {
              if (p6 < uint64(p1 + p0)) {
                if (p6 > uint64(uint64(8) * p5)) {
                  if (p4 <= uint64(p1 + p4)) {
                    if (p3 > uint64(uint64(42) + p6)) {
                      if (p4 <= uint64(uint64(15) * p0)) {
                        if (p5 >= uint64(uint64(0) + p2)) {
                          if (p1 == uint64(p6 * p0)) {
                            if (p1 >= uint64(p7 * p6)) {
                              if (p1 < uint64(uint64(52) * p5)) {
                                found[44] = true; return -1;  // bug
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 44;
      }
      if (x == 6 && y == 3) {
        if (p1 < p0) {
          if (p5 <= p0) {
            found[45] = true; return -1;  // bug
          }
        }
        return 45;
      }
      if (x == 6 && y == 4) {
        if (p0 == uint64(8)) {
          if (p5 == uint64(uint64(21) + p4)) {
            if (p1 >= uint64(uint64(29) + p5)) {
              if (p3 > uint64(uint64(60) + p2)) {
                found[46] = true; return -1;  // bug
              }
            }
          }
        }
        return 46;
      }
      if (x == 6 && y == 5) {
        if (p3 < p4) {
          if (p6 >= uint64(p5 * p6)) {
            if (p0 == uint64(uint64(62) + p5)) {
              if (p6 != uint64(uint64(32) * p5)) {
                if (p4 == uint64(10)) {
                  if (p4 >= uint64(p4 + p7)) {
                    if (p2 <= uint64(uint64(52) + p6)) {
                      if (p3 <= uint64(6)) {
                        if (p7 != p0) {
                          if (p4 < uint64(p4 * p5)) {
                            if (p1 >= p3) {
                              if (p3 > uint64(uint64(27) + p6)) {
                                found[47] = true; return -1;  // bug
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        return 47;
      }
      if (x == 6 && y == 6) {
        if (p1 < uint64(p2 + p5)) {
          if (p0 <= uint64(33)) {
            if (p4 < uint64(uint64(47) * p5)) {
              if (p7 == uint64(uint64(61) * p6)) {
                if (p7 < uint64(p7 + p1)) {
                  if (p4 == p2) {
                    if (p2 == uint64(28)) {
                      found[48] = true; return -1;  // bug
                    }
                  }
                }
              }
            }
          }
        }
        return 48;
      }
      return 49;
    }
  }
}
