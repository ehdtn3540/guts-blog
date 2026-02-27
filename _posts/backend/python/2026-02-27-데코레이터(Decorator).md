---
title: "데코레이터(Decorator)"
date: 2026-02-27
categories: [backend, python]
tags: [decorator]
---

## 1.  데코레이터란?
데코레이터는 "기존 함수를 수정하지 않고, 그 함수 앞뒤에 추가 기능을 덧붙이는 함수"이다.  
### 작동 원리
파이썬에서 함수는 **일급 객체**이다. 즉, 함수를 변수에 담을 수 있고 다른 함수의 인자로 전달 할 수도 있다.  
이 특징을 이용해 **"함수를 인자로 받아서, 기능을 추가한 새로운 함수를 반환"**하는 것이 데코레이터의 원리.   

## 2. 데코레이터 만들기(기본 구조)
데코레이터는 보통 **중첩 함수** 구조를 가진다.
```
def my_decorator(func):           # 2. func 인자로 원래의 say_hello가 전달됨
    def wrapper():                # 4. (나중에 호출되면) 여기가 실행됨
        print("--- 실행 전 ---")    # 5. 첫 번째 출력
        func()                    # 6. 인자로 받았던 원래의 say_hello 실행 ("안녕하세요!" 출력)
        print("--- 실행 후 ---")    # 7. 마지막 출력
    return wrapper                # 3. wrapper 함수 자체를 반환하여 say_hello 이름을 대체함

@my_decorator                     # 1. 데코레이터 적용 (say_hello를 wrapper로 교체)
def say_hello():
    print("안녕하세요!")

say_hello()                       # 4. 호출 시점: 사실은 wrapper()를 호출하는 것
```
결과  
```
--- 함수 실행 전: 준비 작업 ---
안녕하세요!
--- 함수 실행 후: 뒷정리 작업 ---
```
say_hello()로 호출하는 이유  
```
# 우리가 @을 썼을 때 파이썬 내부에서 벌어지는 일
say_hello = my_decorator(say_hello)

# 함수 호출 직후 print(say_hello.__name__) 코드 실행시  
say_hello가 아니라 wrapper라고 출력된다.
```


## 3. 실무 예시
### 3-1 실행 시간 측정(성능 분석)
```
import time

def timer(func):
    def wrapper(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs) # 원래 함수 실행
        end = time.time()
        print(f"[{func.__name__}] 실행 시간: {end - start:.4f}초")
        return result
    return wrapper

@timer
def heavy_process():
    time.sleep(1.5) # 1.5초 대기
    print("작업 완료!")

heavy_process()
```
### 3-2 권한 확인(보안)
```
def admin_required(func):
    def wrapper(user_role, *args, **kwargs):
        if user_role != "admin":
            print("권한이 없습니다. 접근 불가!")
            return
        return func(user_role, *args, **kwargs)
    return wrapper

@admin_required
def delete_database(user_role):
    print("데이터베이스를 삭제합니다.")

delete_database("user")  # 결과: 권한이 없습니다. 접근 불가!
delete_database("admin") # 결과: 데이터베이스를 삭제합니다.
```

## 4. 데코레이터를 쓰는 이유
- 코드 재사용성: 똑같은 부가 기능(로그, 시간 측정 등)을 여러 함수에 한 줄(@)로 적용할 수 있습니다.
- 가독성: 비즈니스 로직(핵심 기능)과 부가 기능(로깅, 보안 등)이 깔끔하게 분리됩니다.
- 유지보수: 부가 기능을 수정해야 할 때 데코레이터 함수 하나만 고치면 모든 곳에 적용됩니다.

## 5. 기타
- 자바의 어노테이션과 문법은 비슷하지만 기능적으로는 다르다.

