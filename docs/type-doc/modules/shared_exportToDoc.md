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

▸ **isArr**(`s`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `s` | `any` |

#### Returns

`boolean`

#### Defined in

shared/is.ts:17

___

### isBool

▸ **isBool**(`s`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `s` | `any` |

#### Returns

`boolean`

#### Defined in

shared/is.ts:13

___

### isFn

▸ **isFn**(`s`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `s` | `any` |

#### Returns

`boolean`

#### Defined in

shared/is.ts:15

___

### isNum

▸ **isNum**(`s`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `s` | `any` |

#### Returns

`boolean`

#### Defined in

shared/is.ts:12

___

### isObj

▸ **isObj**(`s`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `s` | `any` |

#### Returns

`boolean`

#### Defined in

shared/is.ts:16

___

### isPureNum

▸ **isPureNum**(`value`): `boolean`

判断是否能强转成数字

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | `string` \| `number` |

#### Returns

`boolean`

#### Defined in

shared/is.ts:2

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

shared/is.ts:20

___

### isStr

▸ **isStr**(`s`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `s` | `any` |

#### Returns

`boolean`

#### Defined in

shared/is.ts:11
