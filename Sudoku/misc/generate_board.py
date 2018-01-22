def char_to_num(c):
    if c == '-': return "2d0"
    if c == '0': return "2d2"
    if c == '1': return "2d3"

def make_board(l):
    assert len(l) == 8
    s = ""
    for line in l[::-1]: # flip so that it becomes upside down
        assert len(line) == 8
        s+= "      {"
        s+= ",".join(map(char_to_num, line))
        s+= "},\n"
    return s[:-2]

def print_board(filename):
    with open(filename, "r") as f:
        s = f.read()
    print(make_board(s.strip().split("\n")))

if __name__ == "__main__":
    for f in ["boards/easy_board.txt", "boards/easy_ans.txt",
              "boards/medium_board.txt", "boards/medium_ans.txt",
              "boards/hard_board.txt", "boards/hard_ans.txt",
              "boards/very_hard_board.txt", "boards/very_hard_ans.txt",
              "boards/select_difficulty.txt",
              "boards/difficulty_1.txt", "boards/difficulty_2.txt", "boards/difficulty_3.txt", "boards/difficulty_4.txt"]:
        print(f)
        print_board(f)
