[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/tools

# Module: tools/tools

## Table of contents

### Classes

- [EventBus](../classes/tools_tools.EventBus.md)

### Functions

- [arrToChunk](tools_tools.md#arrtochunk)
- [arrToTree](tools_tools.md#arrtotree)
- [binarySearch](tools_tools.md#binarysearch)
- [celsiusToFahrenheit](tools_tools.md#celsiustofahrenheit)
- [curry](tools_tools.md#curry)
- [cutStr](tools_tools.md#cutstr)
- [dayDiff](tools_tools.md#daydiff)
- [dayOfYear](tools_tools.md#dayofyear)
- [deepClone](tools_tools.md#deepclone)
- [deepCompare](tools_tools.md#deepcompare)
- [excludeKeys](tools_tools.md#excludekeys)
- [excludeVals](tools_tools.md#excludevals)
- [fahrenheitToCelsius](tools_tools.md#fahrenheittocelsius)
- [filterKeys](tools_tools.md#filterkeys)
- [filterVals](tools_tools.md#filtervals)
- [genIcon](tools_tools.md#genicon)
- [getRandomNum](tools_tools.md#getrandomnum)
- [getSum](tools_tools.md#getsum)
- [getType](tools_tools.md#gettype)
- [getValidDate](tools_tools.md#getvaliddate)
- [isLtYear](tools_tools.md#isltyear)
- [numFixed](tools_tools.md#numfixed)
- [padDate](tools_tools.md#paddate)
- [padNum](tools_tools.md#padnum)
- [randomStr](tools_tools.md#randomstr)
- [timeFromDate](tools_tools.md#timefromdate)
- [toCamel](tools_tools.md#tocamel)

## Functions

### arrToChunk

▸ **arrToChunk**\<`T`\>(`arr`, `size`): `T`[][]

把数组分成 n 块

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `arr` | `T`[] | 数组 |
| `size` | `number` | 每个数组大小 |

#### Returns

`T`[][]

返回二维数组

#### Defined in

tools/tools.ts:154

___

### arrToTree

▸ **arrToTree**(`arr`): `TreeData`[]

递归树拍平

#### Parameters

| Name | Type |
| :------ | :------ |
| `arr` | `TreeData`[] |

#### Returns

`TreeData`[]

#### Defined in

tools/tools.ts:116

___

### binarySearch

▸ **binarySearch**\<`T`\>(`arr`, `target`): `number`

二分查找，必须是正序的数组

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `arr` | `T`[] |
| `target` | `T` |

#### Returns

`number`

#### Defined in

tools/tools.ts:167

___

### celsiusToFahrenheit

▸ **celsiusToFahrenheit**(`celsius`): `number`

摄氏度转华氏度

#### Parameters

| Name | Type |
| :------ | :------ |
| `celsius` | `number` |

#### Returns

`number`

#### Defined in

tools/tools.ts:19

___

### curry

▸ **curry**(): `any`

柯里化

#### Returns

`any`

#### Defined in

tools/tools.ts:224

___

### cutStr

▸ **cutStr**(`str`, `len`, `placeholder?`): `string`

截取字符串，默认补 `...` 到后面  
如果长度小于等于 `placeholder` 补充字符串的长度，则直接截取

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `str` | `string` | `undefined` | 字符串 |
| `len` | `number` | `undefined` | 需要截取的长度 |
| `placeholder` | `string` | `'...'` | 补在后面的字符串 默认`...` |

#### Returns

`string`

#### Defined in

tools/tools.ts:194

___

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

tools/tools.ts:24

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

tools/tools.ts:13

___

### deepClone

▸ **deepClone**\<`T`\>(`data`, `map?`): `any`

深拷贝

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `T` |
| `map` | `WeakMap`\<`WeakKey`, `any`\> |

#### Returns

`any`

#### Defined in

tools/tools.ts:59

___

### deepCompare

▸ **deepCompare**(`o1`, `o2`, `seen?`): `boolean`

深度比较对象 `Map | Set`无法使用

#### Parameters

| Name | Type |
| :------ | :------ |
| `o1` | `any` |
| `o2` | `any` |
| `seen` | `WeakMap`\<`WeakKey`, `any`\> |

#### Returns

`boolean`

#### Defined in

tools/tools.ts:76

___

### excludeKeys

▸ **excludeKeys**\<`T`, `K`\>(`target`, `keys`): `Omit`\<`T`, `Extract`\<keyof `T`, `K`\>\>

返回一个新对象，对象中会排除 `keys` 数组
例如：排除 `name`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `T` |
| `K` | extends `string` \| `number` \| `symbol` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `target` | `T` |
| `keys` | `K`[] |

#### Returns

`Omit`\<`T`, `Extract`\<keyof `T`, `K`\>\>

**`Example`**

```ts
excludeKeys(data, ['name'])
```

#### Defined in

tools/tools.ts:401

___

### excludeVals

▸ **excludeVals**\<`T`\>(`data`, `excludeArr`): `Partial`\<`T`\>

返回一个新对象，对象会排除值在 excludeArr，中的元素
例如排除所有空字符串

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `T` |
| `excludeArr` | `any`[] |

#### Returns

`Partial`\<`T`\>

**`Example`**

```ts
excludeVals(data, [''])
```

#### Defined in

tools/tools.ts:360

___

### fahrenheitToCelsius

▸ **fahrenheitToCelsius**(`fahrenheit`): `number`

华氏度转摄氏度

#### Parameters

| Name | Type |
| :------ | :------ |
| `fahrenheit` | `number` |

#### Returns

`number`

#### Defined in

tools/tools.ts:21

___

### filterKeys

▸ **filterKeys**\<`T`, `K`\>(`target`, `keys`): `Pick`\<`T`, `Extract`\<keyof `T`, `K`\>\>

返回一个新对象，对象中会提取 `keys` 数组
例如：提取 `name`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `T` |
| `K` | extends `string` \| `number` \| `symbol` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `target` | `T` |
| `keys` | `K`[] |

#### Returns

`Pick`\<`T`, `Extract`\<keyof `T`, `K`\>\>

**`Example`**

```ts
filterKeys(data, ['name'])
```

#### Defined in

tools/tools.ts:379

___

### filterVals

▸ **filterVals**\<`T`\>(`data`, `extractArr`): `Partial`\<`T`\>

返回一个新对象，对象会提取值在 extractArr，中的元素
例如提取所有空字符串

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `T` |
| `extractArr` | `any`[] |

#### Returns

`Partial`\<`T`\>

**`Example`**

```ts
filterVals(data, [''])
```

#### Defined in

tools/tools.ts:341

___

### genIcon

▸ **genIcon**(`name`, `prefix?`, `suffix?`, `connector?`): `string`

生成 iconfont 的类名

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `name` | `string` | `undefined` | icon 名字 |
| `prefix` | `string` | `'iconfont'` | 前缀默认 iconfont |
| `suffix` | `string` | `'icon'` | 后缀默认 icon |
| `connector` | `string` | `'-'` | 连接符默认 - |

#### Returns

`string`

**iconfont icon-${name}**

#### Defined in

tools/tools.ts:331

___

### getRandomNum

▸ **getRandomNum**(`min`, `max`): `number`

获取随机范围整型数值 不包含最大值

#### Parameters

| Name | Type |
| :------ | :------ |
| `min` | `number` |
| `max` | `number` |

#### Returns

`number`

#### Defined in

tools/tools.ts:33

___

### getSum

▸ **getSum**\<`T`\>(`arr`, `handler?`): `number`

对数组求和

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `arr` | `T`[] | - |
| `handler?` | (`item`: `T`) => `number` | 可以对数组每一项进行操作，返回值将会被相加 |

#### Returns

`number`

#### Defined in

tools/tools.ts:41

___

### getType

▸ **getType**(`data`): `string`

获取类型

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `any` |

#### Returns

`string`

#### Defined in

tools/tools.ts:7

___

### getValidDate

▸ **getValidDate**(`date`): `string` \| `number` \| `Date`

把日期转为 `Date` 对象

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `date` | `string` \| `number` \| `Date` | 日期，可以是字符串或者时间戳 |

#### Returns

`string` \| `number` \| `Date`

#### Defined in

tools/tools.ts:296

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

tools/tools.ts:312

___

### numFixed

▸ **numFixed**(`num`, `precision?`): `number`

解决 Number.toFixed 计算错误

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `num` | `number` | `undefined` | 数值 |
| `precision` | `number` | `2` | 精度 默认 2 |

#### Returns

`number`

**`Example`**

```ts
1.335.toFixed(2) => '1.33'
numFixed(1.335) => 1.34
```

#### Defined in

tools/tools.ts:274

___

### padDate

▸ **padDate**(`date`, `placeholder?`): `string`

日期补零 把`yyyy-MM-dd` 转成 `yyyy-MM-dd HH:mm:ss`

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `date` | `string` | `undefined` | 格式: `2016-06-10` 必须和它长度保持一致 |
| `placeholder` | `string` | `'00:00:00'` | 后面补充的字符串 默认`00:00:00` |

#### Returns

`string`

如`2016-06-10 10:00:00`

#### Defined in

tools/tools.ts:285

___

### padNum

▸ **padNum**(`num`, `precision?`, `placeholder?`): `string`

数字补齐精度

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `num` | `string` \| `number` | `undefined` | 数字 |
| `precision` | `number` | `2` | 精度长度 默认`2` |
| `placeholder` | `string` | `'0'` | 补齐内容 默认`0` |

#### Returns

`string`

#### Defined in

tools/tools.ts:250

___

### randomStr

▸ **randomStr**(): `string`

随机长度为`10`的字符串

#### Returns

`string`

#### Defined in

tools/tools.ts:10

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

tools/tools.ts:16

___

### toCamel

▸ **toCamel**(`key`, `replaceStr?`): `string`

蛇形转驼峰 也可以指定转换其他的

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `key` | `string` | `undefined` | 需要转换的字符串 |
| `replaceStr` | `string` | `'_'` | 默认是 `_`，也就是蛇形转驼峰 |

#### Returns

`string`

**`Example`**

```ts
toCamel('test_a') => 'testA'
toCamel('test/a', '/') => 'testA'
```

#### Defined in

tools/tools.ts:215
