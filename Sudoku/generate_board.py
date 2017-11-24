def char_to_num(c):
    if c == '-': return "2d0"
    if c == '0': return "2d2"
    if c == '1': return "2d3"

def make_board(l):
    assert len(l) == 8
    s = ""
    for line in l:
        assert len(line) == 8
        s+= "      {"
        s+= ",".join(map(char_to_num, list(line)))
        s+= "},\n"
    return s[:-2]

easy_board = [
    "-11---1-",
    "-1--0--1",
    "1----00-",
    "--11--0-",
    "0--11--0",
    "-0--11--",
    "-00--1--",
    "1--0--0-"
]
easy_ans =[
    "01100110",
    "01010011",
    "10101001",
    "10110100",
    "01011010",
    "00101101",
    "10010110",
    "11001001"
]


if __name__ == "__main__":
    print(make_board(easy_board))
    print(make_board(easy_ans))
