from math import sin, radians

detect_range = float(input('각도 범위를 입력해주세요 (입력 예시 : 45) : '))

print(abs(2.0 * sin(0.5 * radians(detect_range))))

