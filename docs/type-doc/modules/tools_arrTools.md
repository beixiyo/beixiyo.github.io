[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/arrTools

# Module: tools/arrTools

## Table of contents

### Functions

- [arrToChunk](tools_arrTools.md#arrtochunk)
- [arrToTree](tools_arrTools.md#arrtotree)
- [binarySearch](tools_arrTools.md#binarysearch)
- [genTypedArr](tools_arrTools.md#gentypedarr)
- [getPageData](tools_arrTools.md#getpagedata)
- [getSum](tools_arrTools.md#getsum)
- [groupBy](tools_arrTools.md#groupby)
- [searchTreeData](tools_arrTools.md#searchtreedata)

## Functions

### arrToChunk

▸ **arrToChunk**\<`T`\>(`arr`, `size`): `T`[][]

把数组分成 n 块，空数组直接返回，其他情况均返回二维数组

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

tools/arrTools.ts:282

___

### arrToTree

▸ **arrToTree**\<`T`\>(`arr`): `TreeData`\<`T`\>[]

扁平数组转递归树

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `TreeItem` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `arr` | `T`[] |

#### Returns

`TreeData`\<`T`\>[]

**`Example`**

```ts
const arr = [
    { id: 1, name: '部门1', pid: 0 },
    { id: 2, name: '部门2', pid: 1 },
    { id: 3, name: '部门3', pid: 1 },
    { id: 4, name: '部门4', pid: 3 },
    { id: 5, name: '部门5', pid: 4 },
    { id: 6, name: '部门6', pid: 1 },
]
const treeData = arrToTree(arr)
```

#### Defined in

tools/arrTools.ts:197

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

索引，找不到返回 -1

#### Defined in

tools/arrTools.ts:298

___

### genTypedArr

▸ **genTypedArr**\<`T`\>(`size`, `genVal`, `ArrayFn?`): `ArrReturnType`\<`T`\>

生成一个指定大小的类型化数组，默认 `Float32Array`，并用指定的生成函数填充

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `AllTypedArrConstructor` = `Float32ArrayConstructor` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `size` | `number` | 数组的长度 |
| `genVal` | (`index`: `number`) => `number` | 一个生成数值的函数，用于填充数组 |
| `ArrayFn` | `T` | 填充数组的构造函数，默认 `Float32Array` |

#### Returns

`ArrReturnType`\<`T`\>

返回一个填充了指定生成函数数值的数组

#### Defined in

tools/arrTools.ts:325

___

### getPageData

▸ **getPageData**\<`T`\>(`arr`, `curPage`, `pageSize?`): `T`[]

计算分页的当前数据

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `arr` | `T`[] | `undefined` | 全部数据的数组 |
| `curPage` | `number` | `undefined` | 当前页 |
| `pageSize` | `number` | `20` | 一页大小，默认 20 |

#### Returns

`T`[]

#### Defined in

tools/arrTools.ts:11

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

tools/arrTools.ts:19

___

### groupBy

▸ **groupBy**\<`T`\>(`data`, `key`, `operateKey`, `action?`, `enableParseFloat?`, `enableDeepClone?`): `any`[]

给定一个数组，根据 key 进行分组

分组内容默认放入数组中，你也可以指定为 `'+' | '-' | '*' | '/' | '**'` 进行相应的操作  

你也可以把整个对象进行分组（设置 `operateKey` 为 `null`），他会把整个对象放入数组。而不是进行 加减乘除 等操作

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Record`\<`string` \| `number` \| `symbol`, `any`\> |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `data` | `T`[] | `undefined` | 要分组的数组 |
| `key` | keyof `T` | `undefined` | 要进行分组的 **键** |
| `operateKey` | keyof `T` | `undefined` | 要操作的 **键**，填 `null` 则对整个对象进行分组，并且会把 `action` 设置为 `arr` |
| `action` | ``"-"`` \| ``"arr"`` \| ``"+"`` \| ``"*"`` \| ``"/"`` \| ``"**"`` | `'arr'` | 操作行为，默认放入数组，你也可以进行相应的操作，`'+'` 为加法，`'-'` 为减法，`'*'` 为乘法，`'/'` 为除法，`'**'` 为乘方 |
| `enableParseFloat` | `boolean` | `false` | 默认 false，当你指定 action 为数值操作时，是否使用 parseFloat，这会把 '10px' 也当成数字 |
| `enableDeepClone` | `boolean` | `false` | 是否深拷贝，默认 false |

#### Returns

`any`[]

**`Example`**

```ts
const input = [{ type: 'chinese', score: 10 }, { type: 'chinese', score: 100 }]
groupBy(input, 'type', 'score') => [{ type: 'chinese', score: [10, 100] }]
groupBy(input, 'type', null) => [ { type: 'chinese', children: [{ ... }] }, ... ]
```

#### Defined in

tools/arrTools.ts:53

___

### searchTreeData

▸ **searchTreeData**\<`T`\>(`keyword`, `data`, `opts?`): `T`[]

树形结构搜索

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Object` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `keyword` | `string` | 搜索关键字 |
| `data` | `T`[] | 数据 |
| `opts` | `SearchOpts` | 配置项，包含搜索字段和是否忽略大小写 |

#### Returns

`T`[]

#### Defined in

tools/arrTools.ts:239
