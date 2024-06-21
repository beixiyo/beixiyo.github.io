[@jl-org/tool](../README.md) / [Modules](../modules.md) / shared

# Module: shared

## Table of contents

### Variables

- [DEG\_1](shared.md#deg_1)
- [DEG\_180](shared.md#deg_180)
- [DEG\_270](shared.md#deg_270)
- [DEG\_30](shared.md#deg_30)
- [DEG\_360](shared.md#deg_360)
- [DEG\_45](shared.md#deg_45)
- [DEG\_60](shared.md#deg_60)
- [DEG\_90](shared.md#deg_90)
- [ONE\_DAY](shared.md#one_day)
- [Reg](shared.md#reg)
- [isNode](shared.md#isnode)

### Functions

- [isArr](shared.md#isarr)
- [isBool](shared.md#isbool)
- [isFn](shared.md#isfn)
- [isNum](shared.md#isnum)
- [isObj](shared.md#isobj)
- [isPureNum](shared.md#ispurenum)
- [isSame](shared.md#issame)
- [isStr](shared.md#isstr)

## Variables

### DEG\_1

• `Const` **DEG\_1**: `number`

Math.PI / 180

#### Defined in

constants/deg.ts:2

___

### DEG\_180

• `Const` **DEG\_180**: `number`

#### Defined in

constants/deg.ts:8

___

### DEG\_270

• `Const` **DEG\_270**: `number`

#### Defined in

constants/deg.ts:9

___

### DEG\_30

• `Const` **DEG\_30**: `number`

#### Defined in

constants/deg.ts:3

___

### DEG\_360

• `Const` **DEG\_360**: `number`

#### Defined in

constants/deg.ts:10

___

### DEG\_45

• `Const` **DEG\_45**: `number`

#### Defined in

constants/deg.ts:4

___

### DEG\_60

• `Const` **DEG\_60**: `number`

#### Defined in

constants/deg.ts:5

___

### DEG\_90

• `Const` **DEG\_90**: `number`

#### Defined in

constants/deg.ts:7

___

### ONE\_DAY

• `Const` **ONE\_DAY**: `number`

一整天的毫秒

#### Defined in

constants/tool.ts:22

___

### Reg

• `Const` **Reg**: `Object`

各种正则表达式

#### Type declaration

| Name | Type | Description |
| :------ | :------ | :------ |
| `cardId` | `RegExp` | 身份证正则 |
| `chinese` | `RegExp` | 中文正则 |
| `numToLocaleString` | `RegExp` | 数字转千分位正则 **`Example`** ```ts "123456789".replace(Reg.numToLocaleString, ",") ``` |
| `phone` | `RegExp` | 手机号正则 |
| `pwd` | `RegExp` | 密码校验正则：必须包含数字、大小写字母、特殊字符，6-12 位 |
| `rgb` | `RegExp` | rgb 颜色正则 |

#### Defined in

constants/tool.ts:2

___

### isNode

• `Const` **isNode**: `boolean`

检查是否是 Node 环境

#### Defined in

constants/tool.ts:24

## Functions

### isArr

▸ **isArr**\<`T`\>(`data`): data is T[]

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `any` |

#### Returns

data is T[]

#### Defined in

shared/is.ts:28

___

### isBool

▸ **isBool**(`data`): data is boolean

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `any` |

#### Returns

data is boolean

#### Defined in

shared/is.ts:24

___

### isFn

▸ **isFn**(`data`): data is Function

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `any` |

#### Returns

data is Function

#### Defined in

shared/is.ts:26

___

### isNum

▸ **isNum**(`data`): data is number

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `any` |

#### Returns

data is number

#### Defined in

shared/is.ts:23

___

### isObj

▸ **isObj**(`data`): data is object

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `any` |

#### Returns

data is object

#### Defined in

shared/is.ts:27

___

### isPureNum

▸ **isPureNum**(`value`, `enableParseFloat?`): `boolean`

判断是否能强转成数字

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `value` | `string` \| `number` | `undefined` | 判断的值 |
| `enableParseFloat` | `boolean` | `false` | 默认 false，是否使用 parseFloat，这会把 '10px' 也当成数字 |

#### Returns

`boolean`

#### Defined in

shared/is.ts:6

___

### isSame

▸ **isSame**(`a`, `b`): `boolean`

Object.is

#### Parameters

| Name | Type |
| :------ | :------ |
| `a` | `any` |
| `b` | `any` |

#### Returns

`boolean`

#### Defined in

shared/is.ts:31

___

### isStr

▸ **isStr**(`data`): data is string

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `any` |

#### Returns

data is string

#### Defined in

shared/is.ts:22
