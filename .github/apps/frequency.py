import sys

def vowel_frequencies(file_path):
    vowels = 'aeiou'
    frequencies = {vowel: 0 for vowel in vowels}

    with open(file_path, 'r') as file:
        text = file.read().lower()
        for char in text:
            if char in vowels:
                frequencies[char] += 1

    return frequencies

def print_vowel_frequencies(frequencies):
    for vowel, count in frequencies.items():
        print(f"{vowel} --> {count}")

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: python frequency.py <file_path>")
        sys.exit(1)

    file_path = sys.argv[1]
    frequencies = vowel_frequencies(file_path)
    print_vowel_frequencies(frequencies)    