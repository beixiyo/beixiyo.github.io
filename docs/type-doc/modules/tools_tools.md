[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/tools

# Module: tools/tools

## Table of contents

### Functions

- [celsiusToFahrenheit](tools_tools.md#celsiustofahrenheit)
- [curry](tools_tools.md#curry)
- [cutStr](tools_tools.md#cutstr)
- [deepClone](tools_tools.md#deepclone)
- [deepCompare](tools_tools.md#deepcompare)
- [excludeKeys](tools_tools.md#excludekeys)
- [excludeVals](tools_tools.md#excludevals)
- [fahrenheitToCelsius](tools_tools.md#fahrenheittocelsius)
- [filterKeys](tools_tools.md#filterkeys)
- [filterVals](tools_tools.md#filtervals)
- [genIcon](tools_tools.md#genicon)
- [getRandomNum](tools_tools.md#getrandomnum)
- [getType](tools_tools.md#gettype)
- [numFixed](tools_tools.md#numfixed)
- [padEmptyObj](tools_tools.md#pademptyobj)
- [padNum](tools_tools.md#padnum)
- [randomStr](tools_tools.md#randomstr)
- [toCamel](tools_tools.md#tocamel)

## Functions

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

tools/tools.ts:11

___

### curry

▸ **curry**(): `any`

柯里化

#### Returns

`any`

#### Defined in

tools/tools.ts:160

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

tools/tools.ts:91

___

### deepClone

▸ **deepClone**\<`T`\>(`data`, `map?`): `T`

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

`T`

#### Defined in

tools/tools.ts:23

___

### deepCompare

▸ **deepCompare**(`o1`, `o2`, `seen?`): `boolean`

深度比较对象 `Map | Set`无法使用  
支持循环引用比较

#### Parameters

| Name | Type |
| :------ | :------ |
| `o1` | `any` |
| `o2` | `any` |
| `seen` | `WeakMap`\<`WeakKey`, `any`\> |

#### Returns

`boolean`

#### Defined in

tools/tools.ts:44

___

### excludeKeys

▸ **excludeKeys**\<`T`, `K`\>(`target`, `keys`): `Omit`\<`T`, `Extract`\<keyof `T`, `K`\>\>

排除 `keys` 数组，返回一个对象
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

tools/tools.ts:294

___

### excludeVals

▸ **excludeVals**\<`T`\>(`data`, `excludeArr`): `Partial`\<`T`\>

排除值在 excludeArr，中的元素
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

tools/tools.ts:253

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

tools/tools.ts:13

___

### filterKeys

▸ **filterKeys**\<`T`, `K`\>(`target`, `keys`): `Pick`\<`T`, `Extract`\<keyof `T`, `K`\>\>

提取 `keys` 数组，返回一个对象
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

tools/tools.ts:272

___

### filterVals

▸ **filterVals**\<`T`\>(`data`, `extractArr`): `Partial`\<`T`\>

提取值在 extractArr，中的元素
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

tools/tools.ts:234

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

tools/tools.ts:224

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

tools/tools.ts:18

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

tools/tools.ts:5

___

### numFixed

▸ **numFixed**(`num`, `precision?`): `number`

解决 Number.toFixed 计算错误

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `num` | `string` \| `number` | `undefined` | 数值 |
| `precision` | `number` | `2` | 精度，默认 2 |

#### Returns

`number`

**`Example`**

```ts
1.335.toFixed(2) => '1.33'
numFixed(1.335) => 1.34
```

#### Defined in

tools/tools.ts:210

___

### padEmptyObj

▸ **padEmptyObj**\<`T`\>(`data`, `config?`): `T`

把对象的空值转为指定字符串，默认 `--`  
包含 空白字符串、null、undefined 等  
默认不包含数值或字符串 0，可通过配置修改

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `object` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `T` |
| `config?` | `Object` |
| `config.ignoreNum?` | `boolean` |
| `config.padStr?` | `string` |

#### Returns

`T`

#### Defined in

tools/tools.ts:109

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

tools/tools.ts:186

___

### randomStr

▸ **randomStr**(): `string`

随机长度为`10`的字符串

#### Returns

`string`

#### Defined in

tools/tools.ts:8

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

tools/tools.ts:151
