#Goodbye World!
def bunny():
    str = "#Goodbye World!{n}def bunny():{n}    str = {q}{s}{q}{n}    print(str.format(s=str, n=chr(10), q='{q}')){n}def main():{n}    #Hop{n}    bunny(){n}if __name__ == {q}__main__{q}:{n}    main()"
    print(str.format(s=str, n=chr(10), q='"'))
def main():
    #Hop
    bunny()
if __name__ == "__main__":
    main()
