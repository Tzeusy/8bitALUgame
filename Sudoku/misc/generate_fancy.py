def char_to_num(c):
    return "3d" + c

def make_board(l):
    assert len(l) == 8
    s = ""
    for line in l[::-1]:
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
    for f in ["boards/fancy.txt",
              "boards/countdown_1.txt", "boards/countdown_2.txt", "boards/countdown_3.txt"]:
        print(f)
        print_board(f)
