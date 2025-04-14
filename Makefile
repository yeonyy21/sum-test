# 컴파일러와 플래그 설정
CXX      = g++
CXXFLAGS = -Wall -g

# 최종 실행 파일 이름과 오브젝트 파일 목록
TARGET = sum-test
OBJS   = main.o sum.o

# 기본 타겟: 실행 파일 빌드
all: $(TARGET)

# 실행 파일 링크 단계
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET)

# 개별 cpp 파일을 오브젝트 파일로 컴파일하는 규칙
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# clean 타겟: 빌드 산출물 삭제
clean:
	rm -f $(TARGET) *.o

.PHONY: all clean
