[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/dateTools

# Module: tools/dateTools

## Table of contents

### Interfaces

- [DateInfo](../interfaces/tools_dateTools.DateInfo.md)

### Type Aliases

- [DateFormat](tools_dateTools.md#dateformat)
- [TimeGapOpts](tools_dateTools.md#timegapopts)

### Functions

- [dayDiff](tools_dateTools.md#daydiff)
- [dayOfYear](tools_dateTools.md#dayofyear)
- [formatDate](tools_dateTools.md#formatdate)
- [getQuarter](tools_dateTools.md#getquarter)
- [getValidDate](tools_dateTools.md#getvaliddate)
- [isLtYear](tools_dateTools.md#isltyear)
- [padDate](tools_dateTools.md#paddate)
- [timeFromDate](tools_dateTools.md#timefromdate)
- [timeGap](tools_dateTools.md#timegap)

## Type Aliases

### DateFormat

Ƭ **DateFormat**: (`dateInfo`: [`DateInfo`](../interfaces/tools_dateTools.DateInfo.md)) => `string` \| ``"yyyy-MM-dd"`` \| ``"yyyy-MM-dd HH"`` \| ``"yyyy-MM-dd HH:mm"`` \| ``"yyyy-MM-dd HH:mm:ss"`` \| ``"yyyy-MM-dd HH:mm:ss:ms"`` \| ``"yyyy-MM-dd 00:00"`` \| ``"yyyy-MM-dd 00:00:00"`` \| ``"yyyy-MM-dd 23:59"`` \| ``"yyyy-MM-dd 23:59:59"``

#### Defined in

tools/dateTools.ts:198

___

### TimeGapOpts

Ƭ **TimeGapOpts**: `Object`

#### Type declaration

| Name | Type | Description |
| :------ | :------ | :------ |
| `afterFn?` | (`dateStr`: `string`) => `string` | - |
| `beforeFn?` | (`dateStr`: `string`) => `string` | - |
| `fallback?` | `string` | 兜底替代字符串，默认 -- |

#### Defined in

tools/dateTools.ts:220

## Functions

### dayDiff

▸ **dayDiff**(`date1`, `date2`): `number`

获取日期间隔 单位(天)

#### Parameters

| Name | Type |
| :------ | :------ |
| `date1` | `TimeType` |
| `date2` | `TimeType` |

#### Returns

`number`

#### Defined in

tools/dateTools.ts:36

___

### dayOfYear

▸ **dayOfYear**(`date?`): `number`

今年的第几天

#### Parameters

| Name | Type |
| :------ | :------ |
| `date` | `Date` |

#### Returns

`number`

#### Defined in

tools/dateTools.ts:8

___

### formatDate

▸ **formatDate**(`formatter?`, `date?`, `padZero?`): `string`

格式化时间，你也可以放在 Date.prototype 上，然后 new Date().formatDate()

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `formatter` | [`DateFormat`](tools_dateTools.md#dateformat) | `'yyyy-MM-dd HH:mm:ss'` | 格式化函数或者字符串 |
| `date?` | `Date` | `undefined` | 日期，默认当前时间 |
| `padZero` | `boolean` | `true` | 是否补零，默认 true |

#### Returns

`string`

**`Example`**

```ts
console.log(formatDate('yyyy-MM-dd 00:00'))
console.log(formatDate('yyyy-MM-dd', new Date(66600), false))
console.log(formatDate('yyyy-MM-dd HH:mm:ss:ms'))
console.log(formatDate((dateInfo) => {
    return `今年是${dateInfo.yyyy}年`
}))
```

#### Defined in

tools/dateTools.ts:146

___

### getQuarter

▸ **getQuarter**(`date?`): ``1`` \| ``2`` \| ``3`` \| ``4``

获取季度

#### Parameters

| Name | Type |
| :------ | :------ |
| `date` | `TimeType` |

#### Returns

``1`` \| ``2`` \| ``3`` \| ``4``

#### Defined in

tools/dateTools.ts:18

___

### getValidDate

▸ **getValidDate**(`date`): `string` \| `number` \| `Date`

把日期转为 `Date` 对象，非法日期则抛异常

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `date` | `string` \| `number` \| `Date` | 日期，可以是字符串或者时间戳 |

#### Returns

`string` \| `number` \| `Date`

#### Defined in

tools/dateTools.ts:59

___

### isLtYear

▸ **isLtYear**(`curDate`, `yearLen?`): `boolean`

返回给定日期是否小于某年`一月一日` 默认去年

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `curDate` | `string` \| `number` \| `Date` | `undefined` | 当前日期 |
| `yearLen` | `number` | `-1` | 年份长度，默认 `-1`，即去年 |

#### Returns

`boolean`

#### Defined in

tools/dateTools.ts:75

___

### padDate

▸ **padDate**(`date`, `placeholder?`): `string`

日期补零 把`yyyy-MM-dd` 转成 `yyyy-MM-dd HH:mm:ss`

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `date` | `string` | `undefined` | 格式: `2016-06-10`，必须和它长度保持一致，否则直接返回 |
| `placeholder` | `string` | `'00:00:00'` | 后面补充的字符串 默认`00:00:00` |

#### Returns

`string`

如`2016-06-10 10:00:00`

#### Defined in

tools/dateTools.ts:48

___

### timeFromDate

▸ **timeFromDate**(`date`): `string`

获取时分秒

#### Parameters

| Name | Type |
| :------ | :------ |
| `date` | `Date` |

#### Returns

`string`

#### Defined in

tools/dateTools.ts:15

___

### timeGap

▸ **timeGap**(`date?`, `opts?`): `string`

描述传入日期相对于当前时间的口头说法  
例如：刚刚、1分钟前、1小时前、1天前、1个月前、1年前...

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `date?` | `TimeType` | 需要计算时间间隔的日期 |
| `opts` | [`TimeGapOpts`](tools_dateTools.md#timegapopts) | - |

#### Returns

`string`

**`Example`**

```ts
console.log(timeGap()) // 刚刚
```

#### Defined in

tools/dateTools.ts:93
