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
- [uniqueId](tools_tools.md#uniqueid)
- [wait](tools_tools.md#wait)

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

[src/tools/tools.ts:18](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L18)

___

### curry

▸ **curry**(): `any`

柯里化

#### Returns

`any`

#### Defined in

[src/tools/tools.ts:186](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L186)

___

### cutStr

▸ **cutStr**(`str`, `len`, `placeholder?`): `string`

- 截取字符串，默认补 `...` 到后面
- 如果长度小于等于 `placeholder` 补充字符串的长度，则直接截取

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `str` | `string` | `undefined` | 字符串 |
| `len` | `number` | `undefined` | 需要截取的长度 |
| `placeholder` | `string` | `'...'` | 补在后面的字符串，默认`...` |

#### Returns

`string`

#### Defined in

[src/tools/tools.ts:109](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L109)

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

[src/tools/tools.ts:40](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L40)

___

### deepCompare

▸ **deepCompare**(`o1`, `o2`, `seen?`): `boolean`

深度比较对象 `Map | Set` 无法使用  
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

[src/tools/tools.ts:61](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L61)

___

### excludeKeys

▸ **excludeKeys**\<`T`, `K`\>(`data`, `keys`): `Omit`\<`T`, `Extract`\<keyof `T`, `K`\>\>

- 从 `keys` 数组中排除属性，返回一个对象
- 例如：从对象中排除 `name` 属性，返回一个对象

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `object` |
| `K` | extends `string` \| `number` \| `symbol` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `data` | `T` | 目标对象 |
| `keys` | `K`[] | 需要提取的属性 |

#### Returns

`Omit`\<`T`, `Extract`\<keyof `T`, `K`\>\>

**`Example`**

```ts
excludeKeys(data, ['name'])
```

#### Defined in

[src/tools/tools.ts:354](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L354)

___

### excludeVals

▸ **excludeVals**\<`T`\>(`data`, `excludeArr`): `Partial`\<`T`\>

- 排除值在 excludeArr 中的元素，返回一个对象
- 例如排除对象中所有空字符串

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `object` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `data` | `T` | 一个对象 |
| `excludeArr` | `any`[] | 排除的值 |

#### Returns

`Partial`\<`T`\>

**`Example`**

```ts
excludeVals(data, [''])
```

#### Defined in

[src/tools/tools.ts:303](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L303)

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

[src/tools/tools.ts:20](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L20)

___

### filterKeys

▸ **filterKeys**\<`T`, `K`\>(`data`, `keys`): `Pick`\<`T`, `Extract`\<keyof `T`, `K`\>\>

- 从 `keys` 数组中提取属性，返回一个对象
- 例如：从对象中提取 `name` 属性，返回一个对象

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `object` |
| `K` | extends `string` \| `number` \| `symbol` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `data` | `T` | 目标对象 |
| `keys` | `K`[] | 需要提取的属性 |

#### Returns

`Pick`\<`T`, `Extract`\<keyof `T`, `K`\>\>

**`Example`**

```ts
filterKeys(data, ['name'])
```

#### Defined in

[src/tools/tools.ts:327](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L327)

___

### filterVals

▸ **filterVals**\<`T`\>(`data`, `extractArr`): `Partial`\<`T`\>

- 提取值在 extractArr 中的元素，返回一个对象
- 例如提取对象中所有空字符串

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `data` | `T` | 一个对象 |
| `extractArr` | `any`[] | 提取的值 |

#### Returns

`Partial`\<`T`\>

**`Example`**

```ts
filterVals(data, [''])
```

#### Defined in

[src/tools/tools.ts:278](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L278)

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

iconfont icon-${name}

#### Defined in

[src/tools/tools.ts:262](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L262)

___

### getRandomNum

▸ **getRandomNum**(`min`, `max`, `enableFloat?`): `number`

获取随机范围数值，不包含最大值

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `min` | `number` | `undefined` | 最小值 |
| `max` | `number` | `undefined` | 最大值 |
| `enableFloat` | `boolean` | `false` | 是否返回浮点数，默认 false |

#### Returns

`number`

#### Defined in

[src/tools/tools.ts:28](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L28)

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

[src/tools/tools.ts:12](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L12)

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

[src/tools/tools.ts:248](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L248)

___

### padEmptyObj

▸ **padEmptyObj**\<`T`\>(`data`, `config?`): `T`

- 把对象的空值转为指定字符串，默认 `--`，返回一个对象
- 空值包含 **空字符串、空格、null、undefined** 
- 默认不包含数值 0，可通过配置修改

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `object` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `data` | `T` | 需要转换的对象 |
| `config?` | `Object` | - |
| `config.ignoreNum?` | `boolean` | 忽略数字 0，默认 true |
| `config.padStr?` | `string` | 要填补的字符串，默认 -- |

#### Returns

`T`

#### Defined in

[src/tools/tools.ts:129](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L129)

___

### padNum

▸ **padNum**(`num`, `precision?`, `placeholder?`): `string`

数字补齐精度

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `num` | `string` \| `number` | `undefined` | 数字 |
| `precision` | `number` | `2` | 精度长度，默认 `2` |
| `placeholder` | `string` | `'0'` | 补齐内容，默认 `0` |

#### Returns

`string`

数字字符串

**`Example`**

```ts
padNum(1) => '1.00'
padNum(1, 3) => '1.000')
padNum(1, 3, '1') => '1.111'
```

#### Defined in

[src/tools/tools.ts:222](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L222)

___

### randomStr

▸ **randomStr**(): `string`

随机长度为`10`的字符串

#### Returns

`string`

#### Defined in

[src/tools/tools.ts:15](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L15)

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

[src/tools/tools.ts:177](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L177)

___

### uniqueId

▸ **uniqueId**(): `number`

获取自增唯一 ID

#### Returns

`number`

#### Defined in

[src/tools/tools.ts:9](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L9)

___

### wait

▸ **wait**(`durationMS?`): `Promise`\<`unknown`\>

等待指定时间后返回 Promise

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `durationMS` | `number` | `1000` | 等待时间，默认 1000 毫秒 |

#### Returns

`Promise`\<`unknown`\>

**`Example`**

```ts
await wait(2000)
```

#### Defined in

[src/tools/tools.ts:381](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/tools.ts#L381)
