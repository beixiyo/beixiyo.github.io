[@jl-org/tool](../README.md) / [Modules](../modules.md) / shared

# Module: shared

## Table of contents

### Variables

- [DEG\_1](shared.md#deg_1)
- [DEG\_15](shared.md#deg_15)
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

[src/constants/deg.ts:2](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/deg.ts#L2)

___

### DEG\_15

• `Const` **DEG\_15**: `number`

Math.PI / 180 * 15

#### Defined in

[src/constants/deg.ts:5](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/deg.ts#L5)

___

### DEG\_180

• `Const` **DEG\_180**: `number`

Math.PI

#### Defined in

[src/constants/deg.ts:17](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/deg.ts#L17)

___

### DEG\_270

• `Const` **DEG\_270**: `number`

Math.PI / 180 * 270

#### Defined in

[src/constants/deg.ts:20](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/deg.ts#L20)

___

### DEG\_30

• `Const` **DEG\_30**: `number`

Math.PI / 180 * 30

#### Defined in

[src/constants/deg.ts:7](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/deg.ts#L7)

___

### DEG\_360

• `Const` **DEG\_360**: `number`

Math.PI * 2

#### Defined in

[src/constants/deg.ts:22](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/deg.ts#L22)

___

### DEG\_45

• `Const` **DEG\_45**: `number`

Math.PI / 180 * 45

#### Defined in

[src/constants/deg.ts:10](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/deg.ts#L10)

___

### DEG\_60

• `Const` **DEG\_60**: `number`

Math.PI / 180 * 60

#### Defined in

[src/constants/deg.ts:12](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/deg.ts#L12)

___

### DEG\_90

• `Const` **DEG\_90**: `number`

Math.PI / 180 * 90

#### Defined in

[src/constants/deg.ts:15](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/deg.ts#L15)

___

### ONE\_DAY

• `Const` **ONE\_DAY**: `number`

一整天的毫秒

#### Defined in

[src/constants/tool.ts:27](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/tool.ts#L27)

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

[src/constants/tool.ts:2](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/tool.ts#L2)

___

### isNode

• `Const` **isNode**: `boolean`

检查是否是 Node 环境

#### Defined in

[src/constants/tool.ts:29](https://github.com/beixiyo/jl-tool/blob/45e2229/src/constants/tool.ts#L29)

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

[src/shared/is.ts:32](https://github.com/beixiyo/jl-tool/blob/45e2229/src/shared/is.ts#L32)

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

[src/shared/is.ts:24](https://github.com/beixiyo/jl-tool/blob/45e2229/src/shared/is.ts#L24)

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

[src/shared/is.ts:26](https://github.com/beixiyo/jl-tool/blob/45e2229/src/shared/is.ts#L26)

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

[src/shared/is.ts:23](https://github.com/beixiyo/jl-tool/blob/45e2229/src/shared/is.ts#L23)

___

### isObj

▸ **isObj**(`data`): data is object

typeof data === 'object' && data !== null

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `any` |

#### Returns

data is object

#### Defined in

[src/shared/is.ts:31](https://github.com/beixiyo/jl-tool/blob/45e2229/src/shared/is.ts#L31)

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

[src/shared/is.ts:6](https://github.com/beixiyo/jl-tool/blob/45e2229/src/shared/is.ts#L6)

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

[src/shared/is.ts:35](https://github.com/beixiyo/jl-tool/blob/45e2229/src/shared/is.ts#L35)

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

[src/shared/is.ts:22](https://github.com/beixiyo/jl-tool/blob/45e2229/src/shared/is.ts#L22)
