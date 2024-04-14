[@jl-org/tool](../README.md) / [Modules](../modules.md) / shared/exportToDoc

# Module: shared/exportToDoc

## Table of contents

### Variables

- [Reg](shared_exportToDoc.md#reg)

### Functions

- [isArr](shared_exportToDoc.md#isarr)
- [isBool](shared_exportToDoc.md#isbool)
- [isFn](shared_exportToDoc.md#isfn)
- [isNum](shared_exportToDoc.md#isnum)
- [isObj](shared_exportToDoc.md#isobj)
- [isPureNum](shared_exportToDoc.md#ispurenum)
- [isSame](shared_exportToDoc.md#issame)
- [isStr](shared_exportToDoc.md#isstr)

## Variables

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

shared/constant.ts:2

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
