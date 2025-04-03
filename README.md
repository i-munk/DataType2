# DataType2

이 프로젝트는 Solidity의 다양한 데이터 타입을 실습하기 위한 스마트 컨트랙트입니다. `string`, `array`, `mapping`, `struct`, `bytes`, `bytes32` 등을 포함하며, 관련 함수들을 통해 CRUD 기능을 구현했습니다.

## ✅ 개요

이 컨트랙트는 아래와 같은 내용을 실습하는 데 목적이 있습니다:

- 문자열(string) 처리
- 숫자 및 문자열 배열 처리
- 구조체(struct)와 매핑(mapping) 사용
- 바이트(bytes) 타입 - 고정 크기 및 가변 크기
- Getter / Setter 함수 구현
- SPDX 라이선스 및 Solidity 버전 명시

## 📄 주요 구성 요소

| 항목           | 설명                                                       |
| -------------- | ---------------------------------------------------------- |
| `message`      | private string 변수, getter/setter 함수 제공               |
| `numbers`      | uint256 배열, 추가/조회 함수 제공                          |
| `names`        | string 배열, 추가/조회 함수 제공                           |
| `balances`     | address를 key, uint256을 value로 하는 매핑                 |
| `users`        | address를 key, 사용자 정보(name, age)를 가지는 구조체 매핑 |
| `dynamicData`  | 가변 크기 bytes 변수                                       |
| `fixedData`    | 고정 크기 bytes32 변수                                     |
| `getDetails()` | 주요 변수들을 한번에 반환하는 함수                         |

## 🧾 구현된 함수 목록

- `getMessage()` / `setMessage(string)`
- `getNumbers()` / `addNumber(uint256)` / `getNumber(uint256)`
- `getNames()` / `addName(string)`
- `setBalance(address, uint256)` / `getBalance(address)`
- `setUser(address, string, uint256)` / `getUser(address)`
- `setDynamicData(bytes)` / `getDynamicData()`
- `setFixedData(bytes32)` / `getFixedData()`
- `getDetails()` - message, numbers, names, fixedData, dynamicData 반환

## 🧪 테스트

### 테스트 실행 방법

```bash
npm install
npx hardhat test
```
